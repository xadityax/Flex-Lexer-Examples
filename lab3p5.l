%{
#include <stdio.h>
%}

%%
[0-9]* {}
[a-zA-Z \t][a-zA-Z]* {
 fprintf(yyout,"%s line number",yytext);
}
%%
main(){
yyin = fopen("sample.txt","r");
yyout = fopen("outputs.txt", "w");
yylex();
}
