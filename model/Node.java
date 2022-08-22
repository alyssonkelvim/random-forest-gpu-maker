package model;

public class Node {
    private int n;
    private char type;
    private String desc;
    private Node right;
    private Node left;
    
    Node(int n,char type,String desc){
        this.n = n;
        this.type = type;
        this.desc = desc;
    }
    
    @Override
    public String toString (){
        return n +" - " +  type+": " + desc;
    }
    
    public int getN() {
        return this.n;
    }

    public void setN(int n) {
        this.n = n;
    }

    public char getType() {
        return this.type;
    }

    public void setType(char type) {
        this.type = type;
    }

    public String getDesc() {
        return this.desc;
    }

    public void setDesc(String desc) {
        this.desc = desc;
    }

    public Node getRight() {
        return this.right;
    }

    public void setRight(Node right) {
        this.right = right;
    }

    public Node getLeft() {
        return this.left;
    }

    public void setLeft(Node left) {
        this.left = left;
    }

}
