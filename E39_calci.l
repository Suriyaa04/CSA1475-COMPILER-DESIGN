/*39.	Write a LEX program to implement a simple calculator.*/

%{
    #include<stdio.h>   
    int op = 0;
    float a,b; 
%}

%%
[0-9]+|([0-9]*)"."([0-9]+)      {if(op == 0){
                                    a = atof(yytext);
                                    }
                                    else{
                                        b = atof(yytext);
                                        digit();
                                    }    
                                }
"+"     {op = 1;}
"-"     {op = 2;}
"*"     {op = 3;}
"/"     {op = 4;}
\n      {printf("\tANSWER : %f \n\n", a);}
%%

void digit(){
    switch(op){
        case 1:
            a=a+b;
            break;
        case 2:
            a=a-b;
            break;
        case 3:
            a=a*b;
            break;
        case 4:
            a=a/b;
            break;
    }
    op = 0;
}

int yywrap(){
    return 1;
}

int main(){
    yylex();
    return 0;
}