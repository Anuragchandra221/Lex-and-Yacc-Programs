%{
	char word[] = "geeks";
	int count = 0;
%}

%%
[a-zA-Z]+ {
	if(strcmp(word, yytext)==0){
		count++;
	}
}
%%

int main(){
	extern FILE *yyin;
	yyin = fopen("word_input.txt", "r");
	yylex();
	printf("The word %s occured %d times", word, count);
}

int yywrap(){
	return 1;
}
