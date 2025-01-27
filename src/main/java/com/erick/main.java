
package com.erick;

import java.io.*;

public class main {
    public void match() throws IOException {
        String filePath = "C:\\Users\\axelp\\OneDrive\\Documentos\\Traductores de lenguaje\\CompilerPython\\src\\main\\java\\com\\erick\\palabras.txt";

        System.out.println("Limon Guevara Erick Antonio ");
        System.out.println("Piedra Flores Axel Jesus");
        System.out.println("Rogriguez Martinez Leonardo Javier");

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

        System.out.println("Limon Guevara Erick Antonio ");
        System.out.println("Piedra Flores Axel Jesus");
        System.out.println("Rogriguez Martinez Leonardo Javier");
    }

}
