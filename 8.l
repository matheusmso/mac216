%%
^[ ]+int[ ]+.* {
    printf("%s\n", yytext);
}
^[ ]+double[ ]+.* {
    printf("%s\n", yytext);
}
. {/**/}
%%
int main() {
    yylex();
    return 0;
}

