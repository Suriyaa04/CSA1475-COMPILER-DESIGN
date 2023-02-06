/*14.	Write a LEX program which adds line numbers to the given C program file and display the same in the standard output.*/
%{
    #include<stdio.h>
    int line = 1;    
%}
line .*\n

%%
{line}    {printf("%d %s \n", line, yytext);line++;}

%%

int yywrap(){
    return(1);
}

int main(){
    yyin = fopen("sample.c", "r");
    yylex();
    return 0;
}