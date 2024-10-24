%option noyywrap
%{
	#include<stdio.h>
	int num_comments = 0;   // Para contar los comentarios
%}


LLAVES(auto|break|case|char|const|continue|default|do|double|else|enum|extern|float|for|goto|if|int|long|register|return|short|signed|sizeof|static|struct|switch|typedef|union|unsigned|void|volatile|while|bool|class|catch|delete|false|friend|inline|namespace|new|operator|private|protected|public|template|this|throw|true|try|typeid|typename|virtual|using|include|define)


OPERADORES     (\+|\-|\*|\/|\%)


LOGICOS     (\&\&|\|\||!|==|!=|<=|>=|<|>)


CONSTANTE    [0-9]+(\.[0-9]+)? 


IDENTIFICADR   [a-zA-Z_][a-zA-Z0-9_]*


COMENTARIO      (\/\/[^\n]*|\/\*([^*]|\*+[^*/])*\*+\/)


SIMBOLO      [\(\)\{\}\[\];:,]

%%

{LLAVES}    { printf("Palabra reservada: %s\n", yytext); }
{COMENTARIO}    { num_comments++; }
{IDENTIFICADR} { printf("Identificador (variable): %s\n", yytext); }
{CONSTANTE}  { printf("Constante numerica: %s\n", yytext); }
{OPERADORES}   { printf("Operador aritmetico: %s\n", yytext); }
{LOGICOS}   { printf("Operador logico: %s\n", yytext); }
{SIMBOLO}    { printf("Simbolo especial: %s\n", yytext); }

[ \t\n]+     { /* Ignorar espacios, tabulaciones y saltos de línea */ }

.            { printf("Caracter no reconocido: %s\n", yytext); }

%%
int main(int argc, char *argv[]) {
    yyin = fopen("Practica3.cpp", "r");  // Abre el archivo de entrada
    if (!yyin) {  // Verifica si el archivo se abrió correctamente
        perror("Error al abrir el archivo");
        return 1;
    }
    yylex();  // Ejecuta el analizador léxico
    fclose(yyin);  // Cierra el archivo
    return 0;
}