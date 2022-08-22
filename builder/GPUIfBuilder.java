package builder;

import java.util.List;
import java.util.stream.Collectors;
import java.util.stream.IntStream;

import model.Node;
import model.TreeStructure;

public class GPUIfBuilder {
    public static void execute(List<TreeStructure> treeStructures){
        String sourceCode = new String();
        sourceCode += generateFunctionSignature(treeStructures.get(0).getTree().getFeatureQuantity());
        sourceCode += generateClassInitialization(treeStructures.get(0).getTree().getClassQuantity());
        sourceCode += generateIfTrees(treeStructures);
        FileBuilder.execute(sourceCode, "out/rf_with_if.cu");
    }

    private static String generateIfTrees(List<TreeStructure> treeStructures) {
        var code = "\tif (i < N) {\n";

        code += treeStructures.stream()
            .map(ts -> generateIfTree(ts.getTree().getRoot(), 2))
            .collect(Collectors.joining("\n"));

        code += "\t}\n";
        return code;
    }

    private static String generateIfTree(Node node, int tab) {
        var tabs = IntStream.range(0, tab)
            .mapToObj(t -> "\t")
            .collect(Collectors.joining(""));
        
        if(node.getType() == 'c'){
            return tabs + "Class[" + getClassIndex(node.getDesc()) + "]++;\n";
        }else{
            String code = new String();
            code += tabs + "if ("+decodeToIf(node.getDesc())+") {\n";
            code += generateIfTree(node.getLeft(), tab + 1);
            code += tabs + "} else {\n";
            code += generateIfTree(node.getRight(), tab + 1);
            code += tabs + "}\n";
            return code;
        }
    }

    private static String decodeToIf(String desc) {
        desc = desc.replace("X","F");
        desc = desc.replace("[","");
        desc = desc.replace("]","[i]");
        return desc;
    }

    private static int getClassIndex(String desc) {
        desc = desc.replace("[","");
        desc = desc.replace("]","");
        desc = desc.replaceAll(" ", "");
        var numbers = desc.split(",");
        for (int i = 0; i < numbers.length; i++) {
            if(!numbers[i].equals("0")) return i;
        }
        return -1;
    }

    private static String generateClassInitialization(int featureQuantity) {
        var classInitialization = IntStream.range(0, featureQuantity)
            .mapToObj(i -> "\tClass["+i+"] = 0;")
            .collect(Collectors.joining("\n"));

        String code = "\tint i = blockIdx.x * blockDim.x + threadIdx.x;" + "\n" +
            "\tint Class["+featureQuantity+"]; " + "\n"
            + classInitialization;
        return code;
    }

    private static String generateFunctionSignature(int featureQuantity) {
        String features = IntStream.range(0, featureQuantity)
            .mapToObj( i -> "float *F"+i)
            .collect(Collectors.joining(", "));
        String code = "__global__ void RF_with_IF("+features+", int *P, const int N)\n{";
        return code;
    }
}
