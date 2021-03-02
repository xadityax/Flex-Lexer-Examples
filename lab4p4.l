%{
#include <stdio.h>
int maxlen = 0;
char arr[100];
%}

%%
exe {return;}
[ a-zA-Z0-9\t][ a-zA-Z0-9\t]* {
	if(yyleng>maxlen){
		for(int i=0;i<yyleng;i++){
			arr[i]=*yytext;
			yytext++;
		}
		maxlen=yyleng;
	}
}

%%
main(){
	yyin = fopen("sample.txt","r");
	yyout = fopen("test.txt", "w");
	yylex();
	printf("String : %s of length %d is longest",arr,maxlen);
	return;
}
