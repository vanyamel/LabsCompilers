%{
#include <stdio.h>
%}

%%

[a-zA-Z][a-zA-Z0-9]*   { printf("IDENTIFIER(%s)\n", yytext); }
[0-9]+                 { printf("NUMBER(%s)\n", yytext); }
"+"                    { printf("PLUS\n"); }
"-"                    { printf("MINUS\n"); }
"*"                    { printf("TIMES\n"); }
"/"                    { printf("DIVIDE\n"); }
"("                    { printf("LPAREN\n"); }
")"                    { printf("RPAREN\n"); }
"="                    { printf("EQUALS\n"); }
"<>"                   { printf("NOTEQUALS\n"); }
"<="                   { printf("LESSEQUAL\n"); }
"<"                    { printf("LESS\n"); }
">="                   { printf("GREATEREQUAL\n"); }
">"                    { printf("GREATER\n"); }
":"                    { printf("COLON\n"); }
";"                    { printf("SEMICOLON\n"); }
","                    { printf("COMMA\n"); }
"{"                    { printf("LBRACE\n"); }
"}"                    { printf("RBRACE\n"); }
"["                    { printf("LBRACKET\n"); }
"]"                    { printf("RBRACKET\n"); }
\"([^\"\n]|\\\")*\"    { printf("STRING(%s)\n", yytext); }
[ \t\n]+               { /ignore/ }
.                      { printf("UNKNOWN(%s)\n", yytext); }

%%

int main(int argc, char **argv) {
    yylex();
    return 0;
}

int yywrap() {
    return 1;
}
