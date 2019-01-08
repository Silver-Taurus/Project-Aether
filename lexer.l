/* Scanner for Aether made in FLEX */
%option noyywrap yylineno

%{
#include <stdio.h>
#include "grammar.tab.h"

void yyerror(char *message);

%}

alpha           [a-zA-Z]+
string          \'([^'\n]|\'\')+\'
whitespace      [ \r\t\v\f]
linefeed        \n

%%
{alpha}         { return ALPHA; }
{string}        { return STRING; }
":"             { return COLON; }
";"             { return SEMICOLON; }
"("             { return LEFT_BRACKET; }
")"             { return RIGHT_BRACKET; }
{whitespace}    { }

%%
