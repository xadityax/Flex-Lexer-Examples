%{
#include <stdio.h>
%}

%%
[0-9]* {}
[a-zA-Z \t][a-zA-Z]* {
 fprintf(yyout,"%s",yytext);
}
%%
main(){
yyin = fopen("sample.txt","r");
yylex();
}
