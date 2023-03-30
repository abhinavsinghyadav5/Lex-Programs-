%{
#include<stdio.h>
#include<stdlib.h>
int line=0,space=0,tab=0,rest=0;
%}

%%

\n line++;
" " space++;
[\t] tab++;
[^\t" "\n] rest++;
. ;

%%

int main(){
yyin=fopen("fi.txt","r");
yylex();
printf("Abhinav Singh Yadav Studentid- 20011780\n");
printf("Number of lines are:%d\n",line);
printf("Number of space are:%d\n",space);
printf("Number of tab are:%d\n",tab);
printf("Number of rest are:%d\n",rest);
return 0;
}

int yywrap(){
 return 1;
}