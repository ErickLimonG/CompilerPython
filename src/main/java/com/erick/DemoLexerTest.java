package com.erick;

import com.erick.Lexer;
import com.erick.Token;
import com.erick.Tokens;

import java.io.*;

public class DemoLexerTest
{
    public void matchId() throws IOException{
        String filePath = "C:\\Users\\erick\\IdeaProjects\\test\\src\\test\\java\\com\\erick\\palabras.txt";

        BufferedReader reader = new BufferedReader(new FileReader(filePath));
        String line;

        while ((line = reader.readLine()) != null) {
            Reader stringReader = new StringReader(line);
            Lexer lexer = new Lexer(stringReader);

            Token token = lexer.yylex();

            if (token != null) {
                System.out.println(line + "=" + token.getTokenType());
            } else {
                System.out.println("No token found in line: " + line);
            }
        }

        reader.close();
    }
}
