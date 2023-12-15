%{	
	int vowels=0, consonants=0;
%}

%%
[aeiouAEIOU] {vowels++;}
[^ aeiouAEIOU] {consonants++;}
%%

int main(){
	printf("Enter the word: ");
	yylex();	
	printf("No of vowels: %d\n", vowels);
	printf("No of consonants: %d", consonants);
}

int yywrap(){
	return 1;
}
