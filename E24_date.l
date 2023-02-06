/*24.	Write a LEX program to check whether the date is valid or not.*/

%{
    #include<stdio.h>   
    int invalid = 0; 
%}

%%
([0-2][0-9]|3[0-1])\/(0[0-9]|1[0-2])\/([1-2][0-9][0-9][0-9])   {printf("VALID DATE !");}
.   {invalid = 1;}
%%

int yywrap(){
    return 1;
}

int main(){
    yylex();
    if(invalid == 1)
        printf("INVALID Date !! \n");
    return 0;
}