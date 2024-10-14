%option noyywrap
%{
    #include<stdio.h>
    #include<stdlib.h>
%}

%%


[\n\t] { /* Ignorar */ }


"analizar"        { printf("Verbo de Analizar encontrado: %s\n", yytext); }
"comparar"     { printf("Verbo de Analizar encontrado: %s\n", yytext); }
"distinguir"      { printf("Verbo de Analizar encontrado: %s\n", yytext); }
"examinar"      { printf("Verbo de Analizar encontrado: %s\n", yytext); }
"interpretar"      { printf("Verbo de Analizar encontrado: %s\n", yytext); }
"organizar"        { printf("Verbo de Analizar encontrado: %s\n", yytext); }
"relacionar"       { printf("Verbo de Analizar encontrado: %s\n", yytext); }
"sintetizar"        { printf("Verbo de Analizar encontrado: %s\n", yytext); }


"brillante"        { printf("Adjetivos calificativos positivos encontrado: %s\n", yytext); }
"creativo"       { printf("Adjetivos calificativos positivos encontrado: %s\n", yytext); }
"efectivo"   { printf("Adjetivos calificativos positivos encontrado: %s\n", yytext); }
"excelente"       { printf("Adjetivos calificativos positivos encontrado: %s\n", yytext); }
"exitoso"        { printf("Adjetivos calificativos positivos encontrado: %s\n", yytext); }
"fascinante"         { printf("Adjetivos calificativos positivos encontrado: %s\n", yytext); }
"inspirador"      { printf("Adjetivos calificativos positivos encontrado: %s\n", yytext); }
"inteligente"      { printf("Adjetivos calificativos positivos encontrado: %s\n", yytext); }


"y"         { printf("Conjuncion encontrada: %s\n", yytext); }
"o"           { printf("Conjuncion encontrada: %s\n", yytext); }
"pero"       { printf("Conjuncion encontrada: %s\n", yytext); }
"aunque"         { printf("Conjuncion encontrada: %s\n", yytext); }
"si"           { printf("Conjuncion encontrada: %s\n", yytext); }
"porque"       { printf("Conjuncion encontrada: %s\n", yytext); }



"a"        { printf("Preposicion encontrada: %s\n", yytext); }
"ante"       { printf("Preposicion encontrada: %s\n", yytext); }
"bajo"   { printf("Preposicion encontrada: %s\n", yytext); }
"con"       { printf("Preposicion encontrada: %s\n", yytext); }
"contra"        { printf("Preposicion encontrada: %s\n", yytext); }
"de"         { printf("Preposicion encontrada: %s\n", yytext); }
"desde"      { printf("Preposicion encontrada: %s\n", yytext); }
"en"      { printf("Preposicion encontrada: %s\n", yytext); }
"entre"       { printf("Preposicion encontrada: %s\n", yytext); }
"hacia"   { printf("Preposicion encontrada: %s\n", yytext); }
"hasta"       { printf("Preposicion encontrada: %s\n", yytext); }
"para"        { printf("Preposicion encontrada: %s\n", yytext); }
"por"         { printf("Preposicion encontrada: %s\n", yytext); }
"según"      { printf("Preposicion encontrada: %s\n", yytext); }
"sin"      { printf("Preposicion encontrada: %s\n", yytext); }
"sobre"      { printf("Preposicion encontrada: %s\n", yytext); }
"tras"      { printf("Preposicion encontrada: %s\n", yytext); }


"yo"       { printf("Pronombre encontrado: %s\n", yytext); }
"tú"        { printf("Pronombre encontrado: %s\n", yytext); }
"él"         { printf("Pronombre encontrado: %s\n", yytext); }
"ella"      { printf("Pronombre encontrado: %s\n", yytext); }
"nosotros"      { printf("Pronombre encontrado: %s\n", yytext); }
"ustedes"      { printf("Pronombre encontrado: %s\n", yytext); }
"ellos"      { printf("Pronombre encontrado: %s\n", yytext); }


%%

int main(int argc, char *argv[]) {
    yyin = fopen("txttest8.txt", "r");  // Abre el archivo de entrada
    if (!yyin) {  // Verifica si el archivo se abrió correctamente
        perror("Error al abrir el archivo");
        return 1;
    }
    yylex();  // Ejecuta el analizador léxico
    fclose(yyin);  // Cierra el archivo
    return 0;
}