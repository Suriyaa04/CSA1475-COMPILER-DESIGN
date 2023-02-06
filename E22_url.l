/*22.	Write a LEX program to validate the given URL.*/

%{
    #include<stdio.h>
    int invalid = 0;
%}

%%
"www."[a-z]+".com"  {printf("Valid URL \n");}
"www."[a-z]+".in"  {printf("Valid URL \n");}
"www."[a-z]+".org"  {printf("Valid URL \n");}
.   {invalid = 1;}
%%

int yywrap(){
    return 1;
}

int main(){
    printf("Enter an url : ");
    yylex();
    if(invalid == 1)
        printf("URL is INValid");
    return 0;
    
}