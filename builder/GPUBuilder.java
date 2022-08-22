package builder;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.LinkedList;
import java.util.List;
import java.util.Set;
import java.util.stream.Collector;
import java.util.stream.Collectors;
import java.util.stream.IntStream;

import model.Memory;
import model.Node;
import model.TreeStructure;

public class GPUBuilder {
    public static void execute(List<TreeStructure> treeStructures){
        String sourceCode = new String();
        sourceCode += generateFunctionSignature(treeStructures.get(0).getTree().getFeatureQuantity());
        sourceCode += generateClassInitialization(treeStructures.get(0).getTree().getClassQuantity());
        sourceCode += generateEqTrees(treeStructures);
        sourceCode +="}";
        FileBuilder.execute(sourceCode, "out/rf_with_eq.cu");
    }

    private static String generateEqTrees(List<TreeStructure> treeStructures) {
        var code = "\n\n\tif (i < N) {\n";
        HashMap<String, String> decisions = new HashMap<String, String>();
        int index = 0;
        for(TreeStructure ts : treeStructures){
            var ds = ts.getTree().getAllDecisions();
            for(String d : ds) {
                if(!decisions.containsKey(d)){
                    decisions.put(d, "c"+index);
                    index++;
                }
            }
        }
        
        code += generateBooleanVariablesDeclarations(decisions.size());
        code += generateBooleanVariablesInitialization(decisions);
        code += generateClassAtribuition(treeStructures, decisions, treeStructures.get(0).getTree().getClassQuantity());
        code += generateComparissons(treeStructures.get(0).getTree().getClassQuantity());
        code += "\n\t}\n";
        return code;
    }

    private static String generateClassAtribuition(List<TreeStructure> treeStructures,
            HashMap<String, String> decisions, int featureQuantity) {
        ArrayList<Memory> memories = new ArrayList<>();
        treeStructures.stream()
            .forEach(ts -> memories.addAll(ts.getMemories()));
        
        var classes = "";
        for (int i = 0; i < featureQuantity; i++) {
            System.out.println("Gerando Memórias: "+ (i+1) + "/" + featureQuantity + " - Memorias:" + memories.size());
            classes += "\n\t\tClass["+i+"] = ";
            var mCount = 0;
            ArrayList<Memory> removeMemory = new ArrayList<>();
            for(Memory m : memories){
                System.out.println("Gerando Memórias: "+ (i+1) + "/" + featureQuantity + " - Memorias:" + (mCount + 1) +"/"+ memories.size());
                if(m.getClassId() == i){
                    classes +="(" + m.getDecisions()
                        .keySet()
                        .stream()
                        .map(desc ->decisions.get(desc))
                        .collect(Collectors.joining(" && "))
                    + ")";
                    removeMemory.add(m);
                    classes += " + ";
                }
                
                mCount++;
            }
            classes += "0;\n\n";
            memories.removeAll(removeMemory);
        }
        return classes;
    }
        
    private static String decodeToIf(String desc) {
        desc = desc.replace("X","F");
        desc = desc.replace("[","");
        desc = desc.replace("]","[i]");
        return desc;
    }

    private static String generateBooleanVariablesInitialization(HashMap<String, String> decisions) {
        return "\n\n\t\t" + decisions.keySet()
            .stream()
            .map(key -> decisions.get(key) + " = " + decodeToIf(key) + ";")
            .collect(Collectors.joining("\n\t\t"));
    }

    private static String generateBooleanVariablesDeclarations(int size) {
        var variables = IntStream.range(0, size)
            .mapToObj(i -> "c"+i)
            .collect(Collectors.joining(","));
        return "\t\tbool "+variables+";";
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
            .mapToObj( i -> "float * F"+i)
            .collect(Collectors.joining(", "));
        String code = "__global__ void RF_with_EQ("+features+", int *P, const int N)\n{";
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
            comparisson += String.format("\t\tp%d = (%s > %s)?%s:%s;\n", cont, comp1, comp2, value1, value2);
            comparisson += String.format("\t\tQ%d = (%s > %s)?%s:%s;\n", cont, comp1, comp2, comp1, comp2);
            queue.addLast("Q"+cont);
            map.put("Q"+cont, "p"+cont);
            cont++;
        }
        comparisson += "\t\tP[i] = "+map.get(queue.remove());

        return comparisson;
    }
}


