import java.io.File;
import java.io.FileNotFoundException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.Scanner;
import java.util.stream.Collectors;
import java.util.stream.Stream;

import builder.GPUBuilder;
import builder.GPUIfBuilder;
import builder.MemoriesBuilder;
import builder.RandomForestBuilder;
import builder.TestFileBuilder;
import builder.TreeBuilder;
import model.Memory;
import model.Tree;
import model.TreeStructure;

public class RandomForestVerilogMaker {

    public static final String TREE_FILE_PATH = "in/tree.txt";
    public static final String MEMORY_FILE_PATH = "out/memory%d.pla";
    public static final String VERILOG_FILE_PATH = "out/verilog%d.v";
    public static final String BLIF_FILE_PATH = "out/blif/blif%d.v";
    public static final String ABC_FILE_PATH = "extension/abc";

    public static int featureQuantity;
    
    public static void main(String[] args) throws Exception {
        //generateTreeFiles();
        loadConfig();
        var files = readTreeFiles();
        var treeStructures = decodeFiles(files);
        System.out.println("Gerando GPU com if");
        GPUIfBuilder.execute(treeStructures, featureQuantity);
        System.out.println("Gerando GPU com equações");
        GPUBuilder.execute(treeStructures, featureQuantity);
        System.out.println("Gerando Arquivos de Teste");
        TestFileBuilder.execute(treeStructures, featureQuantity);
    }

    private static void loadConfig() throws FileNotFoundException {
        Scanner ler = new Scanner(new File("in/config.data"));
        featureQuantity = Integer.parseInt(ler.nextLine()) + 1;
    }

    private static List<TreeStructure> decodeFiles(Stream<File> files) {
        files = files.filter(f -> f.getName().contains("tree"));
        var treeStructures = files.map(f -> generateTree(f.getName()))
            .collect(Collectors.toList());
        return treeStructures;
    }

    private static Stream<File> readTreeFiles() {
        File folder = new File("in");
        var files = Arrays.stream(folder.listFiles());
        return files;
    }

    private static void generateTreeFiles() {
        RandomForestBuilder.execute();
    }

    public static int index = 0;
    private static TreeStructure generateTree(String file){
        TreeStructure treeStructure = new TreeStructure();
        file = "in/"+file;
        try {
            Tree tree = TreeBuilder.execute(file);
            ArrayList<Memory> memories = MemoriesBuilder.execute(tree);
            index++;
            treeStructure.setMemories(memories);
            treeStructure.setTree(tree);
        } catch(Exception e) {
            e.printStackTrace();
        }
        return treeStructure;
    }
}
