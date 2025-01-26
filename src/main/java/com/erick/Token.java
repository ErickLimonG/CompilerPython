package com.erick;

public class Token {
    private Tokens tokenType;
    private String lexeme;

    public Token(Tokens tokenType,String lexeme) {
        this.lexeme = lexeme;
        this.tokenType = tokenType;
    }

    public Tokens getTokenType() {
        return tokenType;
    }

    public void setTokenType(Tokens tokenType) {
        this.tokenType = tokenType;
    }

    public String getLexeme() {
        return lexeme;
    }

    public void setLexeme(String lexeme) {
        this.lexeme = lexeme;
    }

    @Override
    public String toString() {
        return "Token{" +
                "tokenType=" + tokenType +
                ", lexeme='" + lexeme + '\'' +
                '}';
    }
}
