%{
#include <stdio.h>
%}
letter [a-zA-Z]
digit [0-9]
%%
{letter}+{digit} printf("Hell");
%%
main(){
yylex();
}
