%option noyywrap
%{
	#include<stdio.h>
%}

%%
[\n\t] ;
[A-Z]{4}[0-9]{6}[MH][A-Z]{2}[A-Z0-9]{5} {printf("CURP \n");}

%%

int main()
{

printf("Ingrese el CURP: ");

yylex();
	return 0;
}