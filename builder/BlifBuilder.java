package builder;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;

public class BlifBuilder {
    public static void execute(String programFile, String inputFile, String outputFile) {
        ProcessBuilder processBuilder = new ProcessBuilder();

        String command = String.format("printf \"read_pla %s \n write_blif %s\" |./%s", inputFile, outputFile, programFile);
        processBuilder.command("bash", "-c",command);
        
        try {

            Process process = processBuilder.start();

            StringBuilder output = new StringBuilder();

            BufferedReader reader = new BufferedReader(
                    new InputStreamReader(process.getInputStream()));

            String line;
            process.waitFor();
            while ((line = reader.readLine()) != null) {
                output.append(line + "\n");
            }

            int exitVal = process.waitFor();
            if (exitVal == 0) {
                System.out.println("Success!");
                System.out.println(output);
            } else {
                // abnormal...
            }
            process.destroy();
        } catch (IOException e) {
            e.printStackTrace();
        } catch (InterruptedException e) {
            e.printStackTrace();
        }
    }
}
