/* 10.	Write a LEX specification file to take input C program from a .c file and count the 
/* number of characters, number of lines & number of words. */

%{
    #include<stdio.h>
    int lines = 0, chars = 0, words = 0;
%}

%%

\n         {lines++;words++;}
[\t ' ']   words++;
[a-zA-Z]   chars++;
%%

main(void){
yyin = fopen("sample.c", "r");
yylex();
printf("No.of words : %d\n", words);
printf("No. of lines : %d\n", lines);
printf("No. of Characters : %d\n", chars);
}

int yywrap(){
return(1);
}