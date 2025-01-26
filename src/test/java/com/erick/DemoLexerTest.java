package erick;

import com.erick.Lexer;
import com.erick.Token;
import com.erick.Tokens;
import org.junit.jupiter.api.Test;

import java.io.BufferedReader;
import java.io.FileReader;
import java.io.IOException;
import java.io.Reader;
import java.io.StringReader;

import static org.junit.jupiter.api.Assertions.assertEquals;

public class DemoLexerTest {

    // Test for reading a file and processing line by line
    @Test
    public void testFileInput() throws IOException {
        // Path to your text file
        String filePath = "./palabras.txt";

        // Create a BufferedReader to read the file line by line
        try (BufferedReader br = new BufferedReader(new FileReader(filePath))) {
            String line;
            while ((line = br.readLine()) != null) {
                System.out.println("Processing line: " + line);
                analyzeLine(line);
            }
        }
    }

    // Helper method to analyze each line with the lexer
    private void analyzeLine(String line) throws IOException {
        // Process the line with the lexer
        Reader stringReader = new StringReader(line);
        Lexer lexer = new Lexer(stringReader);
        Token token;

        while ((token = lexer.yylex()) != null) {
            System.out.println("Token: " + token.getTokenType() + " -> " + token.getLexeme());
        }
    }

    // Other individual tests can remain as before, if needed
}
