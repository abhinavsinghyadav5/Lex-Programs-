%{
#include<stdio.h>
%}


%%

auto|double|int|struct|break|else|long|switch|case|
enum|register|typedef|char|extern|return|union|continue
|for|signed|void|do|if|static|while|default|goto|sizeof
|volatile|const|float|short|unsigned;
([a-zA-Z][0-9])+|[a-zA-Z]* {printf("Identifier\n");}   
^[0-9]+ {printf("Not a Identifier\n");}
.|\n; 

%%

int main()
{
 yylex();						
 return 0;
}

int yywrap()					
{
 return 1;
}
