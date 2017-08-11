%{
    int chamadas[1000][100];
%}
%%
[0][0-9]+ {
    int op = (yytext[1]-'0')*10+(yytext[2]-'0');
    int ddd = (yytext[3]-'0')*100+(yytext[4]-'0')*10+(yytext[5]-'0');
    chamadas[ddd][op]++;
}
. {}
%%

int main() {
    yylex();
    for (int i = 0; i < 10; i++) {
        for (int j = 0; j< 10; j++) {
            if (chamadas[j][i] != 0)
                printf("Operadora: %d qtda: %d ddd: %d", i, chamadas[j][i], j);
        }
        printf("\n");
    }
    printf("\n");
    return 0;
}
