/* 12.	 Write a LEX program to print all the constants in the given */
/* C source program file.*/

%{
    #include<stdio.h>  
    int count = 0; 

%}

%%
[a-z]([ ]*=[ ]*[0-9]+)      {printf("%s \n", yytext);
                                count++;}
.                           ;

%%
main(void){
    yyin = fopen("sample.c", "r");
    yylex();
    printf("No. of Constants : %d \n", count);
}
int yywrap(){
    return(1);
}