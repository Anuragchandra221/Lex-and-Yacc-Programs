%{
	int cc=0,wc=0,lc=0,sc=0;
%}

%%
[\n]  {lc++; cc+=yyleng;}
[ \t] {sc++; cc+=yyleng;}
[^ \t\n]+ {wc++; cc+=yyleng;}
%%

int main(){
	printf("Enter the input: ");
	yylex();
	printf("\nThe no of lines: %d\n",lc);
	printf("\nThe no of spaces: %d\n",sc);
	printf("\nThe no of words: %d\n",wc);
	printf("\nThe no of characters: %d\n",cc);
}

int yywrap(){
	return 1;
}
