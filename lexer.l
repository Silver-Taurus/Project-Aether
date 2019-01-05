/* Scanner for Aether made in FLEX */
%{
#include <stdio.h>
#include "y.tab.h"

int line_number = 0 ;

void yyerror(char *message) ;

%}

%%
