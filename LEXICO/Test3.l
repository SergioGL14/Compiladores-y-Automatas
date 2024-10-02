%option noyywrap
%{
	#include<stdio.h>
%}

%%
[\n\t] ;
[A-Za-z]+[0-9_] {printf("Variables\n");}
%%

int main()
{

printf("Ingrese las variables: ");

yylex();
	return 0;
}