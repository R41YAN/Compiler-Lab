%{
#include <stdio.h>
#include <stdlib.h>
#include <math.h>
#include <time.h>
#include <string.h>

int a, b;
double x;

int fact(int n)
{
    int i, f = 1;
    for (i = 1; i <= n; i++)
        f *= i;
    return f;
}

/* ── Numbered help menu ── */
void show_help()
{
    printf("\n╔══════════════════════════════════════╗\n");
    printf("║         RYNEX HELP MENU              ║\n");
    printf("╠══════════════════════════════════════╣\n");
    printf("║  1.  Addixx(a,b)    → Add            ║\n");
    printf("║  2.  Subixx(a,b)    → Subtract       ║\n");
    printf("║  3.  Multixx(a,b)   → Multiply       ║\n");
    printf("║  4.  Divixx(a,b)    → Divide         ║\n");
    printf("║  5.  Modixx(a,b)    → Modulus        ║\n");
    printf("║  6.  Powerix(a,b)   → Power          ║\n");
    printf("║  7.  Sqrtixx(n)     → Square Root    ║\n");
    printf("║  8.  Absvall(n)     → Absolute       ║\n");
    printf("║  9.  Maxvall(a,b)   → Maximum        ║\n");
    printf("║ 10.  Minvall(a,b)   → Minimum        ║\n");
    printf("║ 11.  Avgvall(a,b)   → Average        ║\n");
    printf("║ 12.  Incvall(n)     → Increment      ║\n");
    printf("║ 13.  Decvall(n)     → Decrement      ║\n");
    printf("║ 14.  Factvall(n)    → Factorial      ║\n");
    printf("║ 15.  Logvall(n)     → Log base 10    ║\n");
    printf("║ 16.  Sinvall(n)     → Sine (deg)     ║\n");
    printf("║ 17.  Cosvall(n)     → Cosine (deg)   ║\n");
    printf("║ 18.  Tanvall(n)     → Tangent (deg)  ║\n");
    printf("║ 19.  Randvall()     → Random 0-99    ║\n");
    printf("║ 20.  Roundvall(x)   → Round          ║\n");
    printf("║ 21.  Floorvall(x)   → Floor          ║\n");
    printf("║ 22.  Ceilvall(x)    → Ceil           ║\n");
    printf("║ 23.  Comparexx(a,b) → Compare        ║\n");
    printf("║ 24.  Isequall(a,b)  → Equal?         ║\n");
    printf("║ 25.  Notequall(a,b) → Not Equal?     ║\n");
    printf("║ 26.  Isgreaterr(a,b)→ Greater?       ║\n");
    printf("║ 27.  Islesss(a,b)   → Less?          ║\n");
    printf("╠══════════════════════════════════════╣\n");
    printf("║  H → Help   Q → Quit                 ║\n");
    printf("╚══════════════════════════════════════╝\n\n");
}

/* ── Function names by number ── */
const char *func_name[] = {
    "",
    "Addixx()",    /* 1  */
    "Subixx()",    /* 2  */
    "Multixx()",   /* 3  */
    "Divixx()",    /* 4  */
    "Modixx()",    /* 5  */
    "Powerix()",   /* 6  */
    "Sqrtixx()",   /* 7  */
    "Absvall()",   /* 8  */
    "Maxvall()",   /* 9  */
    "Minvall()",   /* 10 */
    "Avgvall()",   /* 11 */
    "Incvall()",   /* 12 */
    "Decvall()",   /* 13 */
    "Factvall()",  /* 14 */
    "Logvall()",   /* 15 */
    "Sinvall()",   /* 16 */
    "Cosvall()",   /* 17 */
    "Tanvall()",   /* 18 */
    "Randvall()",  /* 19 */
    "Roundvall()", /* 20 */
    "Floorvall()", /* 21 */
    "Ceilvall()",  /* 22 */
    "Comparexx()", /* 23 */
    "Isequall()",  /* 24 */
    "Notequall()", /* 25 */
    "Isgreaterr()",/* 26 */
    "Islesss()"    /* 27 */
};

/* ── Print prompt before every command ── */
void prompt()
{
    printf("Enter Command: ");
    fflush(stdout);
}

/* ── Interactive function dispatcher by number ── */
void run_by_number(int n)
{
    double dx;
    int ia, ib;

    /* Functions that need two integers */
    if (n==1||n==2||n==3||n==4||n==5||n==6||
        n==9||n==10||n==11||n==23||n==24||n==25||n==26||n==27)
    {
        printf("  a = "); scanf("%d", &ia);
        printf("  b = "); scanf("%d", &ib);
    }
    /* Functions that need one integer */
    else if (n==7||n==8||n==12||n==13||n==14||n==15||n==16||n==17||n==18)
    {
        printf("  n = "); scanf("%d", &ia);
    }
    /* Functions that need one double */
    else if (n==20||n==21||n==22)
    {
        printf("  x = "); scanf("%lf", &dx);
    }
    /* Randvall – no input */
    else if (n==19)
    {
        printf("Result = %d\n\n", rand() % 100);
        return;
    }
    else
    {
        printf("Invalid function number.\n\n");
        return;
    }

    switch (n)
    {
        case  1: printf("Result = %d\n\n", ia + ib); break;
        case  2: printf("Result = %d\n\n", ia - ib); break;
        case  3: printf("Result = %d\n\n", ia * ib); break;
        case  4:
            if (ib == 0) printf("Math Error: Division by zero\n\n");
            else         printf("Result = %d\n\n", ia / ib);
            break;
        case  5: printf("Result = %d\n\n",   ia % ib); break;
        case  6: printf("Result = %.0lf\n\n", pow(ia, ib)); break;
        case  7: printf("Result = %.2lf\n\n", sqrt(ia)); break;
        case  8: printf("Result = %d\n\n",   abs(ia)); break;
        case  9: printf("Result = %d\n\n",   ia > ib ? ia : ib); break;
        case 10: printf("Result = %d\n\n",   ia < ib ? ia : ib); break;
        case 11: printf("Result = %.2lf\n\n", (ia + ib) / 2.0); break;
        case 12: printf("Result = %d\n\n",   ia + 1); break;
        case 13: printf("Result = %d\n\n",   ia - 1); break;
        case 14: printf("Result = %d\n\n",   fact(ia)); break;
        case 15: printf("Result = %.4lf\n\n", log10(ia)); break;
        case 16: printf("Result = %.4lf\n\n", sin(ia * 3.1416 / 180)); break;
        case 17: printf("Result = %.4lf\n\n", cos(ia * 3.1416 / 180)); break;
        case 18: printf("Result = %.4lf\n\n", tan(ia * 3.1416 / 180)); break;
        case 20: printf("Result = %.0lf\n\n", round(dx)); break;
        case 21: printf("Result = %.0lf\n\n", floor(dx)); break;
        case 22: printf("Result = %.0lf\n\n", ceil(dx)); break;
        case 23:
            if      (ia > ib) printf("%d is Greater\n\n", ia);
            else if (ib > ia) printf("%d is Greater\n\n", ib);
            else              printf("Equal\n\n");
            break;
        case 24: printf(ia == ib ? "True\n\n"  : "False\n\n"); break;
        case 25: printf(ia != ib ? "True\n\n"  : "False\n\n"); break;
        case 26: printf(ia >  ib ? "True\n\n"  : "False\n\n"); break;
        case 27: printf(ia <  ib ? "True\n\n"  : "False\n\n"); break;
    }
}
%}

%%

H {
    show_help();
    prompt();
}

HELP\(\) {
    show_help();
    prompt();
}

Q {
    printf("Goodbye! Exiting RYNEX...\n");
    exit(0);
}

[1-9]|1[0-9]|2[0-7] {
    int num = atoi(yytext);
    printf("\n[ %s selected ]\n", func_name[num]);
    run_by_number(num);
    prompt();
}

Addixx\([0-9]+,[0-9]+\) {
    sscanf(yytext, "Addixx(%d,%d)", &a, &b);
    printf("Result = %d\n\n", a + b);
    prompt();
}

Subixx\([0-9]+,[0-9]+\) {
    sscanf(yytext, "Subixx(%d,%d)", &a, &b);
    printf("Result = %d\n\n", a - b);
    prompt();
}

Multixx\([0-9]+,[0-9]+\) {
    sscanf(yytext, "Multixx(%d,%d)", &a, &b);
    printf("Result = %d\n\n", a * b);
    prompt();
}

Divixx\([0-9]+,[0-9]+\) {
    sscanf(yytext, "Divixx(%d,%d)", &a, &b);
    if (b == 0) printf("Math Error: Division by zero\n\n");
    else        printf("Result = %d\n\n", a / b);
    prompt();
}

Modixx\([0-9]+,[0-9]+\) {
    sscanf(yytext, "Modixx(%d,%d)", &a, &b);
    printf("Result = %d\n\n", a % b);
    prompt();
}

Powerix\([0-9]+,[0-9]+\) {
    sscanf(yytext, "Powerix(%d,%d)", &a, &b);
    printf("Result = %.0lf\n\n", pow(a, b));
    prompt();
}

Sqrtixx\([0-9]+\) {
    sscanf(yytext, "Sqrtixx(%d)", &a);
    printf("Result = %.2lf\n\n", sqrt(a));
    prompt();
}

Absvall\(-?[0-9]+\) {
    sscanf(yytext, "Absvall(%d)", &a);
    printf("Result = %d\n\n", abs(a));
    prompt();
}

Maxvall\([0-9]+,[0-9]+\) {
    sscanf(yytext, "Maxvall(%d,%d)", &a, &b);
    printf("Result = %d\n\n", a > b ? a : b);
    prompt();
}

Minvall\([0-9]+,[0-9]+\) {
    sscanf(yytext, "Minvall(%d,%d)", &a, &b);
    printf("Result = %d\n\n", a < b ? a : b);
    prompt();
}

Avgvall\([0-9]+,[0-9]+\) {
    sscanf(yytext, "Avgvall(%d,%d)", &a, &b);
    printf("Result = %.2lf\n\n", (a + b) / 2.0);
    prompt();
}

Incvall\([0-9]+\) {
    sscanf(yytext, "Incvall(%d)", &a);
    printf("Result = %d\n\n", a + 1);
    prompt();
}

Decvall\([0-9]+\) {
    sscanf(yytext, "Decvall(%d)", &a);
    printf("Result = %d\n\n", a - 1);
    prompt();
}

Factvall\([0-9]+\) {
    sscanf(yytext, "Factvall(%d)", &a);
    printf("Result = %d\n\n", fact(a));
    prompt();
}

Logvall\([0-9]+\) {
    sscanf(yytext, "Logvall(%d)", &a);
    printf("Result = %.4lf\n\n", log10(a));
    prompt();
}

Sinvall\([0-9]+\) {
    sscanf(yytext, "Sinvall(%d)", &a);
    printf("Result = %.4lf\n\n", sin(a * 3.1416 / 180));
    prompt();
}

Cosvall\([0-9]+\) {
    sscanf(yytext, "Cosvall(%d)", &a);
    printf("Result = %.4lf\n\n", cos(a * 3.1416 / 180));
    prompt();
}

Tanvall\([0-9]+\) {
    sscanf(yytext, "Tanvall(%d)", &a);
    printf("Result = %.4lf\n\n", tan(a * 3.1416 / 180));
    prompt();
}

Randvall\(\) {
    printf("Result = %d\n\n", rand() % 100);
    prompt();
}

Roundvall\([0-9]+\.[0-9]+\) {
    sscanf(yytext, "Roundvall(%lf)", &x);
    printf("Result = %.0lf\n\n", round(x));
    prompt();
}

Floorvall\([0-9]+\.[0-9]+\) {
    sscanf(yytext, "Floorvall(%lf)", &x);
    printf("Result = %.0lf\n\n", floor(x));
    prompt();
}

Ceilvall\([0-9]+\.[0-9]+\) {
    sscanf(yytext, "Ceilvall(%lf)", &x);
    printf("Result = %.0lf\n\n", ceil(x));
    prompt();
}

Comparexx\([0-9]+,[0-9]+\) {
    sscanf(yytext, "Comparexx(%d,%d)", &a, &b);
    if      (a > b) printf("%d is Greater\n\n", a);
    else if (b > a) printf("%d is Greater\n\n", b);
    else            printf("Equal\n\n");
    prompt();
}

Isequall\([0-9]+,[0-9]+\) {
    sscanf(yytext, "Isequall(%d,%d)", &a, &b);
    printf(a == b ? "True\n\n" : "False\n\n");
    prompt();
}

Notequall\([0-9]+,[0-9]+\) {
    sscanf(yytext, "Notequall(%d,%d)", &a, &b);
    printf(a != b ? "True\n\n" : "False\n\n");
    prompt();
}

Isgreaterr\([0-9]+,[0-9]+\) {
    sscanf(yytext, "Isgreaterr(%d,%d)", &a, &b);
    printf(a > b ? "True\n\n" : "False\n\n");
    prompt();
}

Islesss\([0-9]+,[0-9]+\) {
    sscanf(yytext, "Islesss(%d,%d)", &a, &b);
    printf(a < b ? "True\n\n" : "False\n\n");
    prompt();
}

[ \t\n]+ ;

. {
    printf("Invalid Syntax: '%s'  (Press H for help)\n\n", yytext);
    prompt();
}

%%

int main()
{
    srand(time(NULL));

    printf("╔══════════════════════════════════════╗\n");
    printf("║     Welcome to RYNEX Language v2     ║\n");
    printf("║  Press H for help  |  Q to quit      ║\n");
    printf("╚══════════════════════════════════════╝\n\n");

    prompt();
    yylex();
    return 0;
}

int yywrap()
{
    return 1;
}
