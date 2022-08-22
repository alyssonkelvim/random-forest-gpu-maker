package model;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.HashMap;

public class Memory implements Serializable {

    private HashMap<String, Boolean> decisions = new HashMap<>();
    private ArrayList<Integer> features = new ArrayList<>();
    private int classId;

    public Memory(HashMap<String,Boolean> decisions, ArrayList<Integer> features) {
        this.decisions = decisions;
        this.features = features;
        classId = this.features.indexOf(1);
    }

    public HashMap<String,Boolean> getDecisions() {
        return this.decisions;
    }

    public void setDecisions(HashMap<String,Boolean> decisions) {
        this.decisions = decisions;
    }

    public ArrayList<Integer> getFeatures() {
        return this.features;
    }

    public void setFeatures(ArrayList<Integer> features) {
        this.features = features;
        classId = this.features.indexOf(1);
    }

    public int getClassId(){
        return this.classId;
    }

  
}
