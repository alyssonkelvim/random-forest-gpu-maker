package builder;

import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileWriter;
import java.io.IOException;
import java.io.PrintWriter;
import java.text.DecimalFormat;
import java.text.NumberFormat;
import java.util.Arrays;
import java.util.List;
import java.util.Scanner;
import java.util.stream.Stream;

public class UniqueFileBuilder {
    
    public static void main(String[] args) throws IOException {
        execute("out/blif");
    }

    public static void execute(String path) throws IOException{
        File folder = new File(path);
        var files = Arrays.asList(folder.listFiles());
        var result = generateOneFile(files);
        FileWriter arq = new FileWriter("out/finalBlif.v");
        PrintWriter gravarArq = new PrintWriter(arq);

        gravarArq.printf(result);

        arq.close();
    }

    private static String generateOneFile(List<File> files) throws FileNotFoundException {
        NumberFormat formatter = new DecimalFormat("###");
        String finalFile = "";
        var index = 0;

        for(File f : files){
            var i = getStringFormat(index);
            Scanner sc = new Scanner(f);
            while(sc.hasNext()){
                var line = sc.nextLine();
                
                line = line.replaceAll("x", "x"+i);
                line = line.replaceAll("z", "z"+i);
                
                if(!line.contains("\\")){
                    line = line.replace("\\", "");
                    finalFile += line + "\n";
                }else{
                    finalFile += line;
                }

                
            }
            index++;
        }
        return finalFile;
    }

    private static String getStringFormat(int n){
        String number = n + "";
        for (int i = number.length(); i < 3; i++) {
            number = "0" + number;
        }
        return number;
    }
}
