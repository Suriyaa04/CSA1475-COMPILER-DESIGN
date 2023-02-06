/* 11.	Write a LEX program to count the number of Macros defined and */
/* header files included in the C program.*/

%{
    #include<stdio.h>
    int macros = 0;  
    int header = 0;  
%}

%%

#include     {header++;}   
#define      {macros++;}   

%%

main(void){
    yyin = fopen("sample.c", "r");
    yylex();
    printf("No. of Macros : %d\n", macros);
    printf("No. of Headers : %d\n", header);
}

int yywrap(){
    return(1);
}