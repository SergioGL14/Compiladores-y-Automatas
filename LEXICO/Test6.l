%option noyywrap
%{
	#include<stdio.h>
%}

%%
[\n\t] ;
[a-z]{2}[0-9]{6}@uaeh\.edu\.mx {printf("Correo electronico \n");}

%%

int main()
{

printf("Ingrese el Correo electronico: ");

yylex();
	return 0;
}