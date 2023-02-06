/*16.	Write a LEX Program to convert the substring abc to ABC from the given input string.*/

%{
    #include<stdio.h>    
%}

%%
abc         {printf("ABC");}
%%

int yywrap(){
    return 1;
}

int main(){

    yyin = stdin;
    yylex();
    return 0;

}