%{
	int i;
%}

%%
[0-9]+ {
	i = atoi(yytext);
	if(i%2==0){
		printf("Even number\n");
	}else{
		printf("Odd number\n");
	}
}
%%

int main(){
	yylex();
}

int yywrap(){
	return 1;
}
