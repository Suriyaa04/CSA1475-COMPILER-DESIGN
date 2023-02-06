/*1.	Write a LEX program to check whether the mobile number is valid or not.*/

%{
    #include<stdio.h>
    int invalid = 0;
%}

%%
[0-9]{10,10}    {printf("The Number is Valid !");}
.   {invalid = 1;}
%%

int yywrap(){
    return 1;
}

int main(){
    printf("Enter a number : ");
    yylex();
    if(invalid == 1)
        printf("INVALID Number. \n");
    return 0;
}