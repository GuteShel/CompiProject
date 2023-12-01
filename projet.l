%{
	#include <stdio.h>
	int nbl = 0;
%}


%option noyywrap

/*
%token FLOAT
%token INT
%token BOOL
%token TYPE
%token IDF
%token INT_CONST
%token FLT_CONST
%token COMMA
%token SEMICOLON
%token EQUAL
*/

idf 		^(?!.*__).char?\w{0,10}(?<!_)$
char		[a-zA-Z]
int 		[0-9]
type 		{"float"|"int"|"bool"}
cst 		int+\.int

%%

[0-9] 		{printf("number"); return INT}
[0-9]\.[0-9] 	{printf("float number"); return FLOAT;}
bool 		{printf("bool"); return BOOL;}
const 		{printf("const"); return CONST;}  
type 		{printf("type"); return TYPE;}
idf 		{printf("identifier"); return IDF}
= 		{printf("assign"); return ASSIGN;} 

, 		{printf("comma"); return COMMA;}
; 		{printf("semicolon"); return SEMICOLON;}
:		{printf("colon"); return COLON;}

language	{printf("language"); return LANG;}
function	{printf("function"); return FUNC;}
return		{printf("return"); return RET;}
var		{printf("variable"); return VAR;}
begin		{printf("begin"); return START;}
end		{printf("end"); return END;}
if		{printf("if"); return IF;}
while		{printf("while"); return WHILE;}
"=="		{printf("while"); return EQUAL;}
">"		{printf("greater than"); return GRT;}
"<"		{printf("less than"); return LT;}
">="		{printf("greater or equal"); return GRE;}
"<="		{printf("less or equal"); return LE;}
"+"		{printf("addition"); return ADD;}
"-"		{printf("substitution"); return SUB;}
"*"		{printf("multiply"); return MULT;}
"/"		{printf("division"); return DIV;}
"("		{printf("left parentheses"); return LEFT_PAR;}
")"		{printf("right parentheses"); return RIGHT_PAR;}

[ \t] 		// ignore whitespace 
\n		{nbl++;}
.		printf("erreur a la ligne%d\n", nbl);

%%
