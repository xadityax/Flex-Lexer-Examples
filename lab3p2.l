%{
#include <stdio.h>
%}
%%
begin printf("Compiler");
[a-z]+ printf("C des");
%%
main(){
yylex();
}
