%option noyywrap
%{
	#include<stdio.h>
%}

%%
[\n\t] ;
[A-Z]{4}[0-9]{6}[A-Z0-9]{3} {printf("RFC \n");}

%%

int main()
{

printf("Ingrese el RFC: ");

yylex();
	return 0;
}