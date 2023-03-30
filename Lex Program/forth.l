%{
#include<stdio.h>
%}


%%

auto|double|int|struct|break|else|long|switch
|case|enum|register|typedef|char|extern|return
|union|continue|for|signed|void|do|if|static
|while|default|goto|sizeof|volatile|const|float
|short     {ECHO; printf("\nKEYWORD\n");} 						
[{};,()]   {ECHO; printf("\tSEPERATOR\t");}						
[+-/=*%]   {ECHO; printf("\tOPERATOR\t");}						
([a-zA-Z][0-9])+|[a-zA-Z]* {ECHO; printf("\tIdentifier\t");}    
.|\n ; 		

%%


int main(void)
{
 yylex();
 return 0;
}

int yywrap()								
{
 return 1;
}





//
int p=1,d=0,r=4,
float m=0.0, n=200.0,
while (p <= 3)
{ if(d==0)
{ m= m+n*r+4.5, d++, }
else
{ r++, m=m+r+1000.0, }
p++, }

//