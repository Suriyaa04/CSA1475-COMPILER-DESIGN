// Write a C program to find the leading terminals

#include<stdio.h>
#include<string.h>

char nt[10];
char production[5][20];
char stack[20];
int top = -1;
int n;
int i = 0;
char leading_t[20];


void push(char x){
    top++;
    stack[top] = x;
}

void pop(){
    top--;
}

void pop_all(){
    top = -1;
}

int find_p( int x){
    for(int i = 0; i<strlen(nt);i++){
        if(nt[i] == x)
            return i;
    }
}

void find_lead(char x , int i ){
    int p = find_p(x);

    if(stack[top] == -1){
        return;
    }

    if(production[p][0] >= 97 || production[p][0] <= 122){
        leading_t[i] = production[p][0];
        pop_all();
    }
    else{
        push(production[i][0]);
        find_lead(top[stack], i);
    }
}

int main(){
    
    printf("Enter No. Of Productions : ");
    scanf("%d", &n);

    printf("Enter NonTerminals w/o space : ");
    scanf("%s", &nt);

    

    printf("Enter Productions of the NTs in same order : \n");
    for(int i = 0;i<n;i++){
        scanf("%s", &production[i]);
    }

    printf("NT \t\t PRODUCTIONS \n");
    for(int i = 0;i<n;i++){
        printf("%c \t\t %s\n", nt[i], production[i]);
    }

    push(nt[i]);
    
    while(i <= strlen(nt)){
        
        if(production[i][0] >= 97 || production[i][0] <= 122){
            leading_t[i] = production[i][0];
            printf("%c",production[i][0] );
        }
        else{
            push(production[i][0]);
            find_lead(stack[top] , i);
        }
        i++;
    }

    printf("NT \t\t LEADING Terminals \n");
    for(int i = 0;i<n;i++){
        printf("%c \t\t %c\n", nt[i], leading_t[i]);
    }
    
}