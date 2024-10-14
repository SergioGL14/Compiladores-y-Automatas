%option noyywrap
%{
    #include<stdio.h>
    #include<stdlib.h>
%}

%%


[\n\t] { /* Ignorar */ }


"aplicar"        { printf("Verbo de Aplicacion encontrado: %s\n", yytext); }
"clasificar"     { printf("Verbo de Aplicacion encontrado: %s\n", yytext); }
"completar"      { printf("Verbo de Aplicacion encontrado: %s\n", yytext); }
"construir"      { printf("Verbo de Aplicacion encontrado: %s\n", yytext); }
"demostrar"      { printf("Verbo de Aplicacion encontrado: %s\n", yytext); }
"dibujar"        { printf("Verbo de Aplicacion encontrado: %s\n", yytext); }
"ejecutar"       { printf("Verbo de Aplicacion encontrado: %s\n", yytext); }
"emplear"        { printf("Verbo de Aplicacion encontrado: %s\n", yytext); }
"esbozar"        { printf("Verbo de Aplicacion encontrado: %s\n", yytext); }
"examinar"       { printf("Verbo de Aplicacion encontrado: %s\n", yytext); }
"experimentar"   { printf("Verbo de Aplicacion encontrado: %s\n", yytext); }
"ilustrar"       { printf("Verbo de Aplicacion encontrado: %s\n", yytext); }
"mostrar"        { printf("Verbo de Aplicacion encontrado: %s\n", yytext); }
"operar"         { printf("Verbo de Aplicacion encontrado: %s\n", yytext); }
"practicar"      { printf("Verbo de Aplicacion encontrado: %s\n", yytext); }
"programar"      { printf("Verbo de Aplicacion encontrado: %s\n", yytext); }
"trazar"         { printf("Verbo de Aplicacion encontrado: %s\n", yytext); }
"usar"           { printf("Verbo de Aplicacion encontrado: %s\n", yytext); }
"utilizar"       { printf("Verbo de Aplicacion encontrado: %s\n", yytext); }


[a-zA-Z]+ { printf("Palabra encontrada: %s\n", yytext); }

%%

int main(int argc, char *argv[]) {
    yyin = fopen("txttest7.txt", "r");  // Abre el archivo de entrada
    if (!yyin) {  // Verifica si el archivo se abrió correctamente
        perror("Error al abrir el archivo");
        return 1;
    }
    yylex();  // Ejecuta el analizador léxico
    fclose(yyin);  // Cierra el archivo
    return 0;
}