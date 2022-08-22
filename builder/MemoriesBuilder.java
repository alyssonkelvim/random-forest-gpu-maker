package builder;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.stream.Collectors;

import model.Memory;
import model.Node;
import model.Tree;

public class MemoriesBuilder {

    public static ArrayList<Memory> memories = new ArrayList<>();

    public static ArrayList<Memory> execute(Tree tree) {
        memories = new ArrayList<>();
        fillMemories(tree.getRoot(), false, new HashMap<>());
        return memories;
    }

    private static void fillMemories(Node node, boolean way, HashMap<String, Boolean> decisions){
        if(node.getType() == 'c'){
            ArrayList<Integer> features = buildFeatures(node);
            Memory m = new Memory(decisions, features);
            memories.add(m);
            return;
        }
        decisions.put(node.getDesc(), way);
        fillMemories(node.getLeft(), true, (HashMap<String, Boolean>) decisions.clone());
        fillMemories(node.getRight(), false, (HashMap<String, Boolean>) decisions.clone());
    }

    private static ArrayList<Integer> buildFeatures(Node node) {
        String desc = node.getDesc().replaceAll("\\[", "");
        desc = desc.replaceAll("\\]", "");
        desc = desc.replaceAll(" ", "");
        String parts[] = desc.split(",");
        ArrayList<Integer> features = (ArrayList<Integer>) Arrays.asList(parts)
            .stream()
            .map(s -> stringToFeature(s))
            .collect(Collectors.toList());
        return features;
    }

    private static int stringToFeature(String s){
        var n = Integer.parseInt(s);
        n = n==0? 0 : 1;
        return n;
    }

}
