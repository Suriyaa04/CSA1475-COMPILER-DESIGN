/* 15.	Write a LEX program to count the number of comment lines in */
/* a given C program and eliminate them and write into another file. */

%{
    #include<stdio.h>
    int count = 0;

%}

%%
"//"[a-zA-Z0-9\t ]*"\n"     {count++;}
"/*"[a-zA-Z0-9\t\n ]*"*/"   {count++;}
.                           ;
%%

int yywrap(){
    return 1;
}

int main(){

    yyin = fopen("sample.c","r");
    yylex();
    printf("No. of Commnet Lines : %d", count);
    yyout = fopen("output.c","w");
    yylex();
    fclose(yyin);
    fclose(yyout);

    return 0;
}