%{
#include <stdio.h>
%}

%%
[ \n\t] {}
[a-zA-Z][a-zA-Z]* {
 fprintf(yyout,"%s",yytext);
}
%%
main(){
yyin = fopen("sample.txt","r");
// yyout = fopen("outputs.txt", "w");
yylex();
}
