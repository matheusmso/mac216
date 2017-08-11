    double total = 0.;
%%
^[1-9][0-9]*\.[ ]+\([1-9]\.[0-9]+ {
    printf("%d", atoi(yytext));
    int i;
    for (i = 0; i < yyleng; i++)
        if (yytext[i] == '(')
            break;
    printf(" %e", atof(yytext+i+1));
    total += atof(yytext+i+1);
}
. {}
%%

int main() {
    yylex();
    printf("%e\n", total);
    return 0;
}

