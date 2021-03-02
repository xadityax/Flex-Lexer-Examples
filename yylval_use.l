%{
   #include <stdlib.h>
   #include "y.tab.h"
   char *p;
   %}
   mon     January|February|March|April|May|June|July|August|
   September|October|November|December
   %%
   {mon}           {
                       p=(char *)calloc(strlen(yytext)+1,sizeof(char));
                       strcpy(p,yytext);
                       yylval.text=p;
                       return(t_MONTH);
                   }
   [0-9]{1,2}      {
                       yylval.ival=atoi(yytext);
                       return(t_DAY);
                   }
   [0-9]{4}        {
                       yylval.ival=atoi(yytext);
                       return(t_YEAR);
                   }
   \,              {
                   return ',';
                   }
