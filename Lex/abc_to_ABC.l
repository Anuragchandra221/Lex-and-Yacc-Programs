%{
	int i;
%}

%%
[a-zA-Z]+ {
	for(i=0; i<yyleng; i++){
		if(yytext[i]=='a' && yytext[i+1]=='b' && yytext[i+2]=='c'){
			yytext[i] = 'A';
			yytext[i+1] = 'B';
			yytext[i+2] = 'C';
		}
	}
}
%%

int main(){
	printf("Enter the sentence: ");
	yylex();
	printf("%s", yytext);
}

int yywrap(){
	return 1;
}
