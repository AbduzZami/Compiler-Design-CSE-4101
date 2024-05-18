%{
    #include<stdio.h>
    void yyerror(char *s);
    extern int yylex();
    %}

    %token INT ID EQUL INT_VAL SM RETURN ADD MAIN PO PC CO CC
    %start B

    %%
    B: INT MAIN C;
    C: CO C CC
        | A;
    A: A P
        |
        ;
    P: INT ID SM {printf("Declaration\n");}
        | INT ID EQUL INT_VAL SM {printf("Declaration0\n");}
        ;

    %%
    int main()
    {
        yyparse();
        printf("Parsing Complete.\n");
    }

    void yyerror(char *s)
    {
        fprintf(stderr, "error:%s",s);
    }
