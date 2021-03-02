%{
#include <stdio.h>
int quit=0;
%}

%%
* {printf("Continue\n"}; return 0;}
"QUIT" {printf("Quittin\n"}; quit=1; return 0;}
%%
int main(){
yylex();
if(quit==1) printf("Goodbye Quitting\n");
else printf("continue2\n");
}
