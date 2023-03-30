%{
#include<stdio.h>
int totalchar=0,word=0,wspace=0;		
%}

%%

" " {tspace++;tword++;}				
[\t\n] tword++;						
[^\n\t] tchar++;

%%

int main()
{
yyin=fopen("fi2.txt","r");
yylex();							
printf("Number of characters:: %d\n",totalchar);
printf("Number of words:: %d\n",word);
printf("Number of spaces:: %d\n",wspace);
return 0;
}

int yywrap()
{
return 1;
}
