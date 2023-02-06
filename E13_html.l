/*13. Write a LEX program to print all HTML tags in the input file.*/

%{
    #include<stdio.h>
%}
  
%%

"<"[^>]*">"       {printf("%s\n", yytext);}
.                 ;
%%  
       
int main(){

    yyin = fopen("sample.html","r");
    yylex(); 
    return 0;
}

int yywrap(){
    return(1);
}