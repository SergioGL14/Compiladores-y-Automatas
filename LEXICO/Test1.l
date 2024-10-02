%option noyywrap
%{
	#include<stdio.h>
%}

%%
[\n\t] ;
[0-9]+ {printf("numero entero\n");}
%%

int main()
{

printf("Ingrese numero entero: ");

yylex();
	return 0;
}