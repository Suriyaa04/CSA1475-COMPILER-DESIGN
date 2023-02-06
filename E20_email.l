/*20.	Write a LEX Program to check the email address is valid or not.*/

%{
    #include<stdio.h>
    int invalid = 0;    
%}

%% 
[a-z.0-9]+@[a-z]+".com"|".in"|".org"     {printf("%s is valid \n", yytext);}
.   {invalid = 1;}
%%
int yywrap(){
    return 1;
}
int main(){
    printf("Enter an E-mail address : ");
    yylex();
    if(invalid == 1)
        printf("INVALID Email. \n");
    return 0;
}