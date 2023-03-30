%{
#include<stdio.h>
%}

%%

[0-9]+"."[0-9]+ {ECHO; printf(" Float value");}
[0-9]+ {ECHO; printf(" Integer value");}

%%

int main()
{
  printf("Abhinav Singh Yadav Studentid- 20011780\n");
  yylex();
  return 0;
}

int yywrap() 
{
 return 1;
}