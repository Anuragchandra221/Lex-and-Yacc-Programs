%{
	#include<stdio.h>
	#include<stdlib.h>
%}

%token A B NL

%%
	stmt: S NL { printf("Valid string");
		exit(0); 
		}
	S: A S B
	|
	;
%%

int yyerror(char *msg){
	printf("Invalid string");
	exit(0);
}

int main(){
	printf("Enter the string: ");
	yyparse();
}
