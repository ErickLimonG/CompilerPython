package com.erick;

import java.io.*;

public class main {
    public void match() throws IOException {
        String filePath = "C:\\Users\\erick\\IdeaProjects\\test\\src\\main\\java\\com\\erick\\palabras.txt";

        BufferedReader reader = new BufferedReader(new FileReader(filePath));
        String line;

        while ((line = reader.readLine()) != null) {
            Reader stringReader = new StringReader(line);
            Lexer lexer = new Lexer(stringReader);

            Token token = lexer.yylex();

            if (token != null) {
                System.out.println(line + " = " + token.getTokenType());
            }
        }

        reader.close();
    }

    public static void main(String[] args) {
        try {
            main instance = new main();
            instance.match();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }
}
