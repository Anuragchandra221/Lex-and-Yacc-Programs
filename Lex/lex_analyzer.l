%{
	int n=0;
%}

%%
"while"|"if"|"else"|"int"|"float"|"printf" {
	n++;
	printf("\nKeyword: %s\n", yytext);
}
[a-zA-Z_][a-zA-Z0-9_]* {
	n++;
	printf("\nIdentifier: %s\n", yytext);
}
"<"|">"|"++"|"+"|"-"|"*"|"/"|"<="|">="|"="|"==" {
	n++;
	printf("\nOperator: %s\n", yytext);
}
[(){}|,;] {
	n++;
	printf("\nSeperator: %s\n", yytext);
}
[0-9]*"."[0-9]+ {
	n++;
	printf("\nFloat: %s\n", yytext);
}
[0-9]+ {
	n++;
	printf("\nInteger: %s\n", yytext);
}

%%

int main(){
	extern FILE *yyin;
	yyin = fopen("analyzer.txt", "r");
	yylex();
	printf("\nTotal no of tokens: %d", n);
}

int yywrap(){
	return 1;
}
