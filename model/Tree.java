package model;

import java.util.ArrayList;
import java.util.HashMap;

public class Tree {

    private HashMap<Integer, Node> nodes = new HashMap<>();
    private ArrayList<String> allDecisions = new ArrayList<>();
    private Node root;
    private int featuresQuantity = 0;
    private int classQuantity = 0;

    public int getClassQuantity() {
        return classQuantity;
    }

    public void createNode(char type, int begin, int end, String desc, int n) {
        Node node = new Node(n, type, desc);
        if (this.nodes.isEmpty()){
            this.root = node;
        }
        if (type == 'd') {
            allDecisions.add(desc);
            updateFeatureQuantity(desc);
        } else{
            classQuantity = desc.split(",").length;
        }
        this.nodes.put(n, node);   
    }

    private void updateFeatureQuantity(String desc) {
        int beginSub = 2;
        int endSub = desc.indexOf("]");
        int featNumber = Integer.parseInt(desc.substring(beginSub, endSub));
        if(featNumber + 1 > featuresQuantity){
            this.featuresQuantity = featNumber + 1;
        }
    }

    public void linkNodes(int rootNumber, int sonNumber) {
        Node root = nodes.get(rootNumber);
        Node son = nodes.get(sonNumber);
        if (root.getLeft() == null) {
            root.setLeft(son);
        } else {
            root.setRight(son);
        }
    }

    public HashMap<Integer, Node> getNodes() {
        return this.nodes;
    }

    public void setNodes(HashMap<Integer, Node> nodes) {
        this.nodes = nodes;
    }

    public ArrayList<String> getAllDecisions() {
        return this.allDecisions;
    }

    public void setAllDecisions(ArrayList<String> allDecisions) {
        this.allDecisions = allDecisions;
    }

    public Node getRoot() {
        return root;
    }

    public void setRoot(Node root) {
        this.root = root;
    }

    public int getFeatureQuantity(){
        return this.featuresQuantity;
    }

}
