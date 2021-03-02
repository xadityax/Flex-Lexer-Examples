%{
#include <stdio.h>
int npink=0,npin=0,nink=0;
%}
%%
pink {npink++; REJECT;}
ink {npin++; REJECT;}
pin {nink++; REJECT;}
\n ;
q {return;}
%%
main(){
yylex();
printf("Num occ of pink - %d",npink);
printf("\nNum occ of ink - %d",npin);
printf("\nNum occ of pin - %d",nink);
}
