package com.erick;
import static com.erick.Tokens.*;
%%
%public
%class Lexer
%type Token

%eofval{
    return new Token(EOF,null);
%eofval}
%%
"True"     { return new Token(TRUE,yytext()); }
"False"    { return new Token(FALSE, yytext()); }
"None"     { return new Token(NONE, yytext()); }
"and"      { return new Token(AND, yytext()); }
"or"       { return new Token(OR, yytext()); }
"not"      { return new Token(NOT, yytext()); }
"is"       { return new Token(IS, yytext()); }
"if"       { return new Token(IF, yytext()); }
"else"     { return new Token(ELSE, yytext()); }
"elif"     { return new Token(ELIF, yytext()); }
"for"      { return new Token(FOR, yytext()); }
"while"    { return new Token(WHILE, yytext()); }
"break"    { return new Token(BREAK, yytext()); }
"continue" { return new Token(CONTINUE, yytext()); }
"pass"     { return new Token(PASS, yytext()); }
"try"      { return new Token(TRY, yytext()); }
"except"   { return new Token(EXCEPT, yytext()); }
"finally"  { return new Token(FINALLY, yytext()); }
"raise"    { return new Token(RAISE, yytext()); }
"assert"   { return new Token(ASSERT, yytext()); }
"def"      { return new Token(DEF, yytext()); }
"return"   { return new Token(RETURN, yytext()); }
"lambda"   { return new Token(LAMBDA, yytext()); }
"yield"    { return new Token(YIELD, yytext()); }
"class"    { return new Token(CLASS, yytext()); }
"import"   { return new Token(IMPORT, yytext()); }
"from"     { return new Token(FROM, yytext()); }
"in"       { return new Token(IN, yytext()); }
"as"       { return new Token(AS, yytext()); }
"del"      { return new Token(DEL, yytext()); }
"global"   { return new Token(GLOBAL, yytext()); }
"with"     { return new Token(WITH, yytext()); }
"nonlocal" { return new Token(NONLOCAL, yytext()); }
"Async"    { return new Token(ASYNC, yytext()); }
"Await"    { return new Token(AWAIT, yytext()); }

[a-zA-Z_][a-zA-Z0-9_]* { return new Token(IDENTIFIER, yytext()); }

\d+ { return new Token(INTEGER, yytext()); }
\d+\.\d+ { return new Token(FLOAT, yytext()); }

\+       { return new Token(PLUS, yytext()); }
\-       { return new Token(MINUS, yytext()); }
\*       { return new Token(MULTIPLY, yytext()); }
\/       { return new Token(DIVIDE, yytext()); }

"=="       { return new Token(EQUAL, yytext()); }
"!="       { return new Token(NOT_EQUAL, yytext()); }
"<"        { return new Token(LESS_THAN, yytext()); }
">"        { return new Token(GREATER_THAN, yytext()); }
"<="       { return new Token(LESS_EQUAL, yytext()); }
">="       { return new Token(GREATER_EQUAL, yytext()); }

&&       { return new Token(AND, yytext()); }
\|\|     { return new Token(OR, yytext()); }
"!"        { return new Token(NOT, yytext()); }

\|       { return new Token(PIPE, yytext()); }
\{       { return new Token(LBRACE, yytext()); }
\}       { return new Token(RBRACE, yytext()); }
\[       { return new Token(LBRACKET, yytext()); }
\]       { return new Token(RBRACKET, yytext()); }
\,       { return new Token(COMMA, yytext()); }
\;       { return new Token(SEMICOLON, yytext()); }
\.       { return new Token(DOT, yytext()); }

\#.*$   { return new Token(LINE_COMMENT, yytext()); }

/* Cadenas */
\"([^\"\\\r\n]|\\.)*\"  { return new Token(STRING, yytext()); }
\'[^\'\n]*\' { return new Token(STRING_SIMPLE, yytext()); }

[^] { return new Token(ERRORCITO, yytext()); }
