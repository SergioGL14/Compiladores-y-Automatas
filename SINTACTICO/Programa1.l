%option noyywrap
%{
	#include<stdio.h>
%}


DIGIT [0-9]
OPERATOR [+*/-]
%%
{DIGIT}+    printf("Numero: %s\n", yytext);
{OPERATOR}  printf("Operador: %s\n", yytext);
.           /* Ignorar otros caracteres */
%%

int main(int argc, char *argv[]) {
    yyin = fopen("Programa1.txt", "r");  // Abre el archivo de entrada
    if (!yyin) {  // Verifica si el archivo se abrió correctamente
        perror("Error al abrir el archivo");
        return 1;
    }
    yylex();  // Ejecuta el analizador léxico
    fclose(yyin);  // Cierra el archivo
    return 0;
}