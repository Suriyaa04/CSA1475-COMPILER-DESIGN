/* 23.	Write a Lex Program to identify and count positive and negative numbers. */

%{
    #include<stdio.h>
    int pos = 0, neg = 0;
%}

%%
"-"[1-9]+   {neg++;}
[0-9]+      {pos++;}
.           ;
%%

int yywrap(){
    return 1;
}

int main(){
    yyin = fopen("sample.txt","r");
    yylex();
    printf("Positive Nos : %d \n", pos);
    printf("Negative Nos : %d \n", neg);
    return 0;
}