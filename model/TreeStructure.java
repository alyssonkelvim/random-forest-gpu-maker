package model;

import java.util.ArrayList;

public class TreeStructure {
    Tree tree;
    ArrayList<Memory> memories ;
    
    public Tree getTree() {
        return tree;
    }
    public void setTree(Tree tree) {
        this.tree = tree;
    }
    public ArrayList<Memory> getMemories() {
        return memories;
    }
    public void setMemories(ArrayList<Memory> memories) {
        this.memories = memories;
    }
}
