%option noyywrap
%{
	#include<stdio.h>
%}

%%
[\n\t] ;
-?[0-9]+(\.[0-9]+) {printf("numeros decimales\n");}
%%

int main()
{

printf("Ingrese numero decimales: ");

yylex();
	return 0;
}