%{
#include<stdio.h>
%}

%%

\<[^>]*\> fprintf(yyout,"%s\n",yytext);
.|\n; 

%%

int main()
{
yyin=fopen("input2.html","r");
yyout=fopen("output2.txt","w");
yylex();
return 0;
}

int yywrap()
{
return 1;
}