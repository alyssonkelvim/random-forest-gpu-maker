package builder;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;

public class RandomForestBuilder {
    public static void execute() {
        ProcessBuilder processBuilder = new ProcessBuilder();

        processBuilder.command("bash", "-c","python3 extension/treeGenerator.py");
        

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
