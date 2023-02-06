/* 18.	Write a Lex program to recognise and display keywords, numbers and words in a statement.*/

%{
    #include<stdio.h>    
%}

%%
int|float|main|bool|char|return|while|for   {printf("%s is an Keyword \n", yytext);}
[0-9]*  {printf("%s is a number \n", yytext);}
[a-zA-Z]{2,}   {printf("%s is a word \n", yytext);}
.   ;
%%

int yywrap(){
    return 1;
}

int main(){
    printf("Enter a Statement : \n");
    yylex();

}