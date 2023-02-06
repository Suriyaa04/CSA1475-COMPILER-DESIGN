/*19.	Write a Lex program to identify the capital words from the given input.*/

%{
    #include<stdio.h>
    int count = 0;
%}

%%
[A-Z] {count++; printf("%s is a Capital Letter \n", yytext);}
.   ;
%%

int yywrap(){
    return 1;
}
int main(){

    printf("Enter a Statement : ");
    yylex();
    printf("No .of Capital Letters : %d \n\n", count);

}