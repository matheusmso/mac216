%%
[1-9][0-9]* {
    double a = atof(yytext);
    printf("%g", a/1000);
}
. ECHO;
%%

int main() {
    yylex();
    return 0;
}
    
