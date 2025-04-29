%{
/*
 * Davide Dunne Sanchez A01642355@tec.mx
 */

%}
%%

[\t\s]+                   /* ignore whitespace */ ;

^\/\/.+  { printf("COMMENT "); }

^f  { printf("floatdcl "); }

^i  { printf("intdcl "); }

\=  { printf("assign "); }

\+  { printf("plus "); }

\-  { printf("minus "); }

[a-zA-Z]+  { printf("id "); }

[0-9]+\.[0-9]+  { printf("fnum "); }

[0-9]+  { printf("int "); }

\/  { printf("divide "); }

\*  { printf("multiply "); }

\n  { printf("\n"); }

%%

int main()
{
    printf("Insert expressions:\n");
    yylex();
}
