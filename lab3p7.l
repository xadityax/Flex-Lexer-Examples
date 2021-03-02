%{
#include <stdio.h>
%}

%%
[ \n\t] {}
[a-zA-Z] {
 fprintf(yyout,"%c",(yytext[0]+3));
}
%%
main(){
yyin = fopen("sample.txt","r");
// yyout = fopen("outputs.txt", "w");
yylex();
}
