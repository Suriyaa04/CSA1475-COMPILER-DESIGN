/* 17.	Write a LEX program to find out total number of vowels and consonants from the given input sting. */

%{
    #include<stdio.h>
    int vow = 0, cons = 0;    
%}

%%
\n  ;
[aeiouAEIOU]    vow++;
[^aeiouAEIOU]   cons++;
%%
int yywrap(){
    return 1;
}
int main(){
    printf("Enter a String : ");
    yylex();
    printf("Vowels : %d \n", vow);
    printf("Consonants : %d \n\n", cons);
}