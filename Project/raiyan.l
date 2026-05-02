%{
#include <stdio.h>
#include <stdlib.h>
#include <math.h>
#include <time.h>

int a,b;
double x;

int fact(int n)
{
    int i,f=1;
    for(i=1;i<=n;i++)
        f*=i;
    return f;
}
%}

%%

HELP\(\) {
    printf("\n===== RYNEX HELP MENU =====\n");

    printf("Addixx(a,b) -> Add. Ex: Addixx(10,20)\n");
    printf("Subixx(a,b) -> Subtract\n");
    printf("Multixx(a,b) -> Multiply\n");
    printf("Divixx(a,b) -> Divide\n");
    printf("Modixx(a,b) -> Modulus\n");
    printf("Powerix(a,b)-> Power\n");
    printf("Sqrtixx(n)  -> Square Root\n");
    printf("Absvall(n)  -> Absolute\n");
    printf("Maxvall(a,b)-> Max\n");
    printf("Minvall(a,b)-> Min\n");
    printf("Avgvall(a,b)-> Average\n");
    printf("Incvall(n)  -> Increment\n");
    printf("Decvall(n)  -> Decrement\n");
    printf("Factvall(n) -> Factorial\n");
    printf("Logvall(n)  -> Log10\n");
    printf("Sinvall(n)  -> Sin\n");
    printf("Cosvall(n)  -> Cos\n");
    printf("Tanvall(n)  -> Tan\n");
    printf("Randvall()  -> Random\n");
    printf("Roundvall(x)-> Round\n");
    printf("Floorvall(x)-> Floor\n");
    printf("Ceilvall(x) -> Ceil\n");
    printf("Comparexx(a,b)-> Compare\n");
    printf("Isequall(a,b) -> Equal check\n");
    printf("Notequall(a,b)-> Not equal\n");
    printf("Isgreaterr(a,b)-> Greater\n");
    printf("Islesss(a,b) -> Less\n");

    printf("===========================\n\n");
}

Addixx\([0-9]+,[0-9]+\) {
sscanf(yytext,"Addixx(%d,%d)",&a,&b);
printf("Result = %d\n\n",a+b);
}

Subixx\([0-9]+,[0-9]+\) {
sscanf(yytext,"Subixx(%d,%d)",&a,&b);
printf("Result = %d\n\n",a-b);
}

Multixx\([0-9]+,[0-9]+\) {
sscanf(yytext,"Multixx(%d,%d)",&a,&b);
printf("Result = %d\n\n",a*b);
}

Divixx\([0-9]+,[0-9]+\) {
sscanf(yytext,"Divixx(%d,%d)",&a,&b);
if(b==0) printf("Math Error\n\n");
else printf("Result = %d\n\n",a/b);
}

Modixx\([0-9]+,[0-9]+\) {
sscanf(yytext,"Modixx(%d,%d)",&a,&b);
printf("Result = %d\n\n",a%b);
}

Powerix\([0-9]+,[0-9]+\) {
sscanf(yytext,"Powerix(%d,%d)",&a,&b);
printf("Result = %.0lf\n\n",pow(a,b));
}

Sqrtixx\([0-9]+\) {
sscanf(yytext,"Sqrtixx(%d)",&a);
printf("Result = %.2lf\n\n",sqrt(a));
}

Absvall\(-?[0-9]+\) {
sscanf(yytext,"Absvall(%d)",&a);
printf("Result = %d\n\n",abs(a));
}

Maxvall\([0-9]+,[0-9]+\) {
sscanf(yytext,"Maxvall(%d,%d)",&a,&b);
printf("Result = %d\n\n",a>b?a:b);
}

Minvall\([0-9]+,[0-9]+\) {
sscanf(yytext,"Minvall(%d,%d)",&a,&b);
printf("Result = %d\n\n",a<b?a:b);
}

Avgvall\([0-9]+,[0-9]+\) {
sscanf(yytext,"Avgvall(%d,%d)",&a,&b);
printf("Result = %.2lf\n\n",(a+b)/2.0);
}

Incvall\([0-9]+\) {
sscanf(yytext,"Incvall(%d)",&a);
printf("Result = %d\n\n",a+1);
}

Decvall\([0-9]+\) {
sscanf(yytext,"Decvall(%d)",&a);
printf("Result = %d\n\n",a-1);
}

Factvall\([0-9]+\) {
sscanf(yytext,"Factvall(%d)",&a);
printf("Result = %d\n\n",fact(a));
}

Logvall\([0-9]+\) {
sscanf(yytext,"Logvall(%d)",&a);
printf("Result = %.4lf\n\n",log10(a));
}

Sinvall\([0-9]+\) {
sscanf(yytext,"Sinvall(%d)",&a);
printf("Result = %.4lf\n\n",sin(a*3.1416/180));
}

Cosvall\([0-9]+\) {
sscanf(yytext,"Cosvall(%d)",&a);
printf("Result = %.4lf\n\n",cos(a*3.1416/180));
}

Tanvall\([0-9]+\) {
sscanf(yytext,"Tanvall(%d)",&a);
printf("Result = %.4lf\n\n",tan(a*3.1416/180));
}

Randvall\(\) {
printf("Result = %d\n\n",rand()%100);
}

Roundvall\([0-9]+\.[0-9]+\) {
sscanf(yytext,"Roundvall(%lf)",&x);
printf("Result = %.0lf\n\n",round(x));
}

Floorvall\([0-9]+\.[0-9]+\) {
sscanf(yytext,"Floorvall(%lf)",&x);
printf("Result = %.0lf\n\n",floor(x));
}

Ceilvall\([0-9]+\.[0-9]+\) {
sscanf(yytext,"Ceilvall(%lf)",&x);
printf("Result = %.0lf\n\n",ceil(x));
}

Comparexx\([0-9]+,[0-9]+\) {
sscanf(yytext,"Comparexx(%d,%d)",&a,&b);
if(a>b) printf("%d is Greater\n\n",a);
else if(b>a) printf("%d is Greater\n\n",b);
else printf("Equal\n\n");
}

Isequall\([0-9]+,[0-9]+\) {
sscanf(yytext,"Isequall(%d,%d)",&a,&b);
printf(a==b?"True\n\n":"False\n\n");
}

Notequall\([0-9]+,[0-9]+\) {
sscanf(yytext,"Notequall(%d,%d)",&a,&b);
printf(a!=b?"True\n\n":"False\n\n");
}

Isgreaterr\([0-9]+,[0-9]+\) {
sscanf(yytext,"Isgreaterr(%d,%d)",&a,&b);
printf(a>b?"True\n\n":"False\n\n");
}

Islesss\([0-9]+,[0-9]+\) {
sscanf(yytext,"Islesss(%d,%d)",&a,&b);
printf(a<b?"True\n\n":"False\n\n");
}

[ \t\n]+ ;

. {
printf("Invalid Syntax: %s\n",yytext);
}

%%

int main()
{
srand(time(NULL));

printf("=== Welcome to RYNEX Language ===\n");
printf("Type HELP() for all functions\n\n");
printf("Enter Commands:\n");

yylex();
return 0;
}

int yywrap()
{
return 1;
}
