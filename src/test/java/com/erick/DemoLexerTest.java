package erick;

import com.erick.Lexer;
import com.erick.Token;
import com.erick.Tokens;
import org.junit.jupiter.api.Test;

import java.io.IOException;
import java.io.Reader;
import java.io.StringReader;

import static org.junit.jupiter.api.Assertions.assertEquals;

public class DemoLexerTest
{
    @Test
    public void matchId() throws IOException{
        String testString = "id1";
        Reader stringReader = new StringReader(testString);
        Lexer lexer = new Lexer(stringReader);
        Token token = lexer.yylex();
        assertEquals(Tokens.IDENTIFIER, token.getTokenType());
    }
}
