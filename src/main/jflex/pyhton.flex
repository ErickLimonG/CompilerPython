package com.erick;
import java.io.*;

%%
%public
%class DemonLexer
digit = [0-9]
letter = [a-zA-Z]
whitespace = [\t\r]
eol = [\n]
%type token

%eofval{

%eofval}
%%
"True"     { System.out.println("Representa el valor booleano verdadero"); return symbol(TRUE); }
"False"    { System.out.println("Representa el valor booleano falso"); return symbol(FALSE); }
"None"     { System.out.println("Representa la ausencia de valor o un valor nulo"); return symbol(NONE); }
"and"      { System.out.println("Operador lógico 'Y'"); return symbol(AND); }
"or"       { System.out.println("Operador lógico 'O'"); return symbol(OR); }
"not"      { System.out.println("Operador lógico 'NO'"); return symbol(NOT); }
"is"       { System.out.println("Operador de identidad, verifica si dos objetos son el mismo"); return symbol(IS); }
"if"       { System.out.println("Inicia una estructura condicional"); return symbol(IF); }
"else"     { System.out.println("Define la alternativa cuando la condición del 'if' es falsa"); return symbol(ELSE); }
"elif"     { System.out.println("Define una condición adicional en una estructura condicional"); return symbol(ELIF); }
"for"      { System.out.println("Inicia un ciclo de iteración con un rango o colección"); return symbol(FOR); }
"while"    { System.out.println("Inicia un ciclo que se ejecuta mientras se cumpla una condición"); return symbol(WHILE); }
"break"    { System.out.println("Sale de un ciclo o estructura de control"); return symbol(BREAK); }
"continue" { System.out.println("Salta la iteración actual de un ciclo y continúa con la siguiente"); return symbol(CONTINUE); }
"pass"     { System.out.println("No hace nada, se utiliza como un placeholder"); return symbol(PASS); }
"try"      { System.out.println("Inicia un bloque de código que puede generar excepciones"); return symbol(TRY); }
"except"   { System.out.println("Maneja las excepciones que ocurren en un bloque 'try'"); return symbol(EXCEPT); }
"finally"  { System.out.println("Bloque de código que se ejecuta después de 'try', sin importar si hubo excepciones"); return symbol(FINALLY); }
"raise"    { System.out.println("Lanza una excepción de manera manual"); return symbol(RAISE); }
"assert"   { System.out.println("Verifica si una condición es verdadera, lanza una excepción si es falsa"); return symbol(ASSERT); }
"def"      { System.out.println("Define una función"); return symbol(DEF); }
"return"   { System.out.println("Devuelve un valor desde una función"); return symbol(RETURN); }
"lambda"   { System.out.println("Define una función anónima"); return symbol(LAMBDA); }
"yield"    { System.out.println("Pausa la ejecución de una función generadora y retorna un valor"); return symbol(YIELD); }
"class"    { System.out.println("Define una nueva clase"); return symbol(CLASS); }
"import"   { System.out.println("Importa módulos o clases desde otros archivos"); return symbol(IMPORT); }
"from"     { System.out.println("Especifica de dónde se importan las clases o funciones"); return symbol(FROM); }
"in"       { System.out.println("Verifica si un valor pertenece a una colección, o se usa en ciclos"); return symbol(IN); }
"as"       { System.out.println("Se usa para asignar un alias a un módulo o variable"); return symbol(AS); }
"del"      { System.out.println("Elimina un objeto o variable"); return symbol(DEL); }
"global"   { System.out.println("Declara una variable global dentro de una función"); return symbol(GLOBAL); }
"with"     { System.out.println("Maneja recursos, como archivos, garantizando su cierre después de usarlos"); return symbol(WITH); }
"nonlocal" { System.out.println("Modifica una variable en un ámbito superior que no es global"); return symbol(NONLOCAL); }
"Async"    { System.out.println("Define una función asincrónica que permite operaciones no bloqueantes"); return symbol(ASYNC); }
"Await"    { System.out.println("Espera el resultado de una operación asincrónica"); return symbol(AWAIT); }



/* Identificador */
[a-zA-Z_][a-zA-Z0-9_]* { System.out.println("Identificador encontrado"); return symbol(IDENTIFIER); }

/* Número entero */
\d+ { System.out.println("Número entero encontrado"); return symbol(INTEGER_LITERAL); }

/* Número en punto flotante */
\d+\.\d+ { System.out.println("Número en punto flotante encontrado"); return symbol(FLOAT_LITERAL); }

/* Operadores aritméticos */
\+       { System.out.println("Operador aritmético: +"); return symbol(PLUS); }
\-       { System.out.println("Operador aritmético: -"); return symbol(MINUS); }
\*       { System.out.println("Operador aritmético: *"); return symbol(MULTIPLY); }
\/       { System.out.println("Operador aritmético: /"); return symbol(DIVIDE); }

/* Operadores relacionales */
"=="       { System.out.println("Operador relacional: =="); return symbol(EQUAL); }
"!="       { System.out.println("Operador relacional: !="); return symbol(NOT_EQUAL); }
"<"        { System.out.println("Operador relacional: <"); return symbol(LESS_THAN); }
">"        { System.out.println("Operador relacional: >"); return symbol(GREATER_THAN); }
"<="       { System.out.println("Operador relacional: <="); return symbol(LESS_EQUAL); }
">="       { System.out.println("Operador relacional: >="); return symbol(GREATER_EQUAL); }

/* Operadores lógicos */
&&       { System.out.println("Operador lógico: &&"); return symbol(AND); }
\|\|     { System.out.println("Operador lógico: ||"); return symbol(OR); }
"!"        { System.out.println("Operador lógico: !"); return symbol(NOT); }

/* Símbolos especiales */
\|       { System.out.println("Símbolo especial: |"); return symbol(PIPE); }
\{       { System.out.println("Símbolo especial: {"); return symbol(LBRACE); }
\}       { System.out.println("Símbolo especial: }"); return symbol(RBRACE); }
\[       { System.out.println("Símbolo especial: ["); return symbol(LBRACKET); }
\]       { System.out.println("Símbolo especial: ]"); return symbol(RBRACKET); }
\,       { System.out.println("Símbolo especial: ,"); return symbol(COMMA); }
\;       { System.out.println("Símbolo especial: ;"); return symbol(SEMICOLON); }
\.       { System.out.println("Símbolo especial: ."); return symbol(DOT); }

/* Comentarios de línea */
\#.*$   { System.out.println("Comentario de línea"); return symbol(LINE_COMMENT); }

/* Cadenas */
\"([^\"\\\r\n]|\\.)*\"  {System.out.println("Cadena"); return symbol(STRING);}
\'[^\'\n]*\' {System.out.println("Cadena simple"); return symbol(STRING_SIMPLE);}