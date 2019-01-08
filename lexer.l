/* Scanner for Aether made in FLEX */
%option noyywrap yylineno

%{
#include <stdio.h>
#include "grammar.tab.h"

void yyerror(char *message);

%}

/* Alias */
alpha           [a-zA-Z]+
number		[0-9]+
string          \'([^'\n]|\'\')+\'
whitespace      [ \r\t\v\f]
linefeed        \n

%%
/* Comments */
"###"		{
			int i;
			while((i = yyinput()) != 0) {
				if(i == '\n')
					++yylineno;
				else if(i == '#') {
					if((i = yyinput()) == '#') {
						if((i = yyinput()) == '#')
							break;
						else
							unput(i);
					}
				}
			}
		}

/* Identifiers */
{alpha}         { return ALPHA; }
{number}	{ return NUMBER; }
{string}        { return STRING; }
":"             { return COLON; }
";"             { return SEMICOLON; }
"("             { return LEFT_PARAN; }
")"             { return RIGHT_PARAN; }
"["		{ return LEFT_SQ_BRACK; }
"]"		{ return RIGHT_SQ_BRACK; }
"{"		{ return LEFT_BRACE; }
"}"		{ return RIGHT_BRACE; }
"<"		{ return LEFT_ANGLE_BRACK; }
">"		{ return RIGHT_ANGLE_BRACK; }
{whitespace}    { }

/* Keywords */
"if"		{ return KEYWORD_IF; }
"else"		{ return KEYWORD_ELSE; }
"elif"		{ return KEYWORD_ELIF; }
"for"		{ return KEYWORD_FOR; }
"while"		{ return KEYWORD_WHILE; }
"define"	{ return KEYWORD_DEFINE; }
"as"		{ return KEYWORD_AS; }
"in"		{ return KEYWORD_IN; }
"pointer"	{ return KEYWORD_POINTER; }
"class"		{ return KEYWORD_CLASS; }
"root"		{ return KEYWORD_ROOT; }
"self"		{ return KEYWORD_SELF; }
"enum"		{ return KEYWORD_ENUM; }
"union"		{ return KEYWORD_UNION; }
"private"	{ return KEYWORD_PRIVATE; }
"protected"	{ return KEYWORD_PROTECTED; }
"public"	{ return KEYWORD_PUBLIC; }
"shared"	{ return KEYWORD_SHARED; }
"def"		{ return KEYWORD_DEF; }
"switch"	{ return KEYWORD_SWITCH; }
"case"		{ return KEYWORD_CASE; }
"default"	{ return KEYWORD_DEFAULT; }
"break"		{ return KEYWORD_BREAK; }
"return"	{ return KEYWORD_RETURN; }
"static"	{ return KEYWORD_STATIC; }
"extern"	{ return KEYWORD_EXTERN; }
"const"		{ return KEYWORD_CONST; }

%%


