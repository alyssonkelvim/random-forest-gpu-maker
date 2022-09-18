package builder;

import java.util.HashMap;
import java.util.LinkedList;
import java.util.List;
import java.util.stream.Collectors;
import java.util.stream.IntStream;

import model.Node;
import model.TreeStructure;

public class GPUIfBuilder {
    public static void execute(List<TreeStructure> treeStructures, int featureQuantity){
        String sourceCode = new String();
        sourceCode += generateFunctionSignature(featureQuantity);
        sourceCode += generateClassInitialization(treeStructures.get(0).getTree().getClassQuantity());
        sourceCode += generateIfTrees(treeStructures);
        
        FileBuilder.execute(sourceCode, "out/rf_with_if.cu");
    }

    private static String generateIfTrees(List<TreeStructure> treeStructures) {
        var code = "\n\tif (i < N) {\n";

        code += treeStructures.stream()
            .map(ts -> generateIfTree(ts.getTree().getRoot(), 2))
            .collect(Collectors.joining("\n"));
        code += generateComparissons(treeStructures.get(0).getTree().getClassQuantity());

        code += "\t}\n}";
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

    public static String generateComparissons(int classQuantity){
        LinkedList queue = new LinkedList<String>();
        HashMap map = new HashMap<String, String>();
        for (int i = 0; i < classQuantity; i++) {
            var key = "Class["+i+"]";
            queue.addLast(key);
            map.put(key, i+"");
        }
        String comparisson = "";
        int cont = 0;
        while(queue.size() > 1){
            String comp1 = (String) queue.removeFirst();
            String comp2 = (String) queue.removeFirst();
            String value1 = (String) map.get(comp1);
            String value2 = (String) map.get(comp2);
            comparisson += String.format("\t\tint p%d = (%s > %s)?%s:%s;\n", cont, comp1, comp2, value1, value2);
            comparisson += String.format("\t\tint Q%d = (%s > %s)?%s:%s;\n", cont, comp1, comp2, comp1, comp2);
            queue.addLast("Q"+cont);
            map.put("Q"+cont, "p"+cont);
            cont++;
        }
        comparisson += "\t\tP[i] = "+map.get(queue.remove())+";";

        return comparisson;
    }
}
