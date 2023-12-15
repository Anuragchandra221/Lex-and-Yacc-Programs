%{
	int i, j, flag=1;
%}

%%
[a-zA-Z0-9]+ {
	j = yyleng-1;
	for(i=0; i<=j; i++){
		if(yytext[i]!=yytext[j]){
			flag = 0;
			break;
		}
		j--;
	}
}
%%

int main(){
	printf("Enter the word: ");
	yylex();
	if(flag==1){
		printf("\nThe word is palindrome");
	}else{
		printf("\nThe word is not palindrome");
	}
}

int yywrap(){
	return 1;
}
