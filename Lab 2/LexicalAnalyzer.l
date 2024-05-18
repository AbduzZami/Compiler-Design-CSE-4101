%option noyywrap
%{
    #include<stdio.h>
    #include "SyntaxAnalyzer.tab.h"
    int i = 0;
%}

%%
[ \n\t] {}
"main" {return MAIN;}
"return" {return RETURN;}
"int" {return INT;}
";" {return SM;}
"=" {return EQUL;}
"+" {return ADD;}
[A-Za-z_][a-zA-Z0-9_]* {return ID;}
[0-9]+ {return INT_VAL;}
"(" {return PO;}
")" {return PC;}
"{" {return CO;}
"}" {return CC;}

%%
