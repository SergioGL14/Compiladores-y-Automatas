%option noyywrap
%{
    #include<stdio.h>
    #include<stdlib.h>
%}

%%


[\n\t] { /* Ignorar */ }


"auto"        { printf("Palabra reservada encontrada: %s\n", yytext); }
"break"     { printf("Palabra reservada encontrada: %s\n", yytext); }
"case"      { printf("Palabra reservada encontrada: %s\n", yytext); }
"char"      { printf("Palabra reservada encontrada: %s\n", yytext); }
"const"      { printf("Palabra reservada encontrada: %s\n", yytext); }
"continue"        { printf("Palabra reservada encontrada: %s\n", yytext); }
"default"       { printf("Palabra reservada encontrada: %s\n", yytext); }
"do"        { printf("Palabra reservada encontrada: %s\n", yytext); }
"double"        { printf("Palabra reservada encontrada: %s\n", yytext); }
"else"        { printf("Palabra reservada encontrada: %s\n", yytext); }
"enum"     { printf("Palabra reservada encontrada: %s\n", yytext); }
"extern"      { printf("Palabra reservada encontrada: %s\n", yytext); }
"float"      { printf("Palabra reservada encontrada: %s\n", yytext); }
"for"      { printf("Palabra reservada encontrada: %s\n", yytext); }
"goto"        { printf("Palabra reservada encontrada: %s\n", yytext); }
"if"       { printf("Palabra reservada encontrada: %s\n", yytext); }
"int"        { printf("Palabra reservada encontrada: %s\n", yytext); }
"long"        { printf("Palabra reservada encontrada: %s\n", yytext); }
"register"        { printf("Palabra reservada encontrada: %s\n", yytext); }
"return"        { printf("Palabra reservada encontrada: %s\n", yytext); }
"short"     { printf("Palabra reservada encontrada: %s\n", yytext); }
"signed"      { printf("Palabra reservada encontrada: %s\n", yytext); }
"switch"      { printf("Palabra reservada encontrada: %s\n", yytext); }
"void"      { printf("Palabra reservada encontrada: %s\n", yytext); }
"while"        { printf("Palabra reservada encontrada: %s\n", yytext); }
"unsigned"       { printf("Palabra reservada encontrada: %s\n", yytext); }
"struct"        { printf("Palabra reservada encontrada: %s\n", yytext); }
"sizeof"        { printf("Palabra reservada encontrada: %s\n", yytext); }




%%

int main(int argc, char *argv[]) {
    yyin = fopen("txttest10.txt", "r");  // Abre el archivo de entrada
    if (!yyin) {  // Verifica si el archivo se abrió correctamente
        perror("Error al abrir el archivo");
        return 1;
    }
    yylex();  // Ejecuta el analizador léxico
    fclose(yyin);  // Cierra el archivo
    return 0;
}