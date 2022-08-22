package builder;

import java.io.File;
import java.io.FileNotFoundException;
import java.util.Scanner;

import model.Tree;

public class TreeBuilder {

    public static Tree execute(String filePath) throws Exception {
        try {
            Scanner scanner = new Scanner(new File(filePath));
            Tree tree = new Tree();
            while (scanner.hasNext()) {
                String line = scanner.nextLine();
                if (line.contains("->")) {
                    createLinkBetweenNodes(tree, line);
                } else if (line.contains("label")) {
                    createNewNode(tree, line);
                }
            }
            return tree;
        } catch (FileNotFoundException e) {
            throw new Exception("File \"" + filePath + "\" not found.");
        }
    }

    private static void createNewNode(Tree tree, String line) {
        char type = line.contains("ngini") ? 'd' : 'c';
        int begin;
        int end;

        if (type == 'd') {
            begin = line.indexOf("label=") + 7;
            end = line.indexOf("ngini") - 1;
        } else {
            begin =  line.indexOf("nvalue") + 9;
            end = line.indexOf("] ;") - 1;
        }

        String parts[] = line.split(" ");
        int n = Integer.parseInt(parts[0]);
        String desc = line.substring(begin, end);
        tree.createNode(type, begin, end, desc, n);
    }

    private static void createLinkBetweenNodes(Tree tree, String line) {
        String parts[] = line.split(" ");
        int root = Integer.parseInt(parts[0]);
        int son = Integer.parseInt(parts[2]);
        tree.linkNodes(root, son);
    }
}
