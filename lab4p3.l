%{
#include <stdio.h>
int notemp = 0,n=1;
%}

%%
\n {n++;}
[ a-zA-Z0-9\t][ a-zA-Z0-9\t]* {
	fprintf(yyout,"%s on line number %d\n",yytext,notemp++);
}
%%
main(){
yyin = fopen("sample.txt","r");
yyout = fopen("test.txt", "w");
yylex();
fprintf(yyout,"Num empty lines is %d",n-notemp);
}
