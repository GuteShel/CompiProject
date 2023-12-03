%{
	#include <stdio.h>
	int nbl = 0;
%}


%option noyywrap

idf 		^(?!.*__).char?\w{0,10}(?<!_)$ // identifier of the thing
char		[a-zA-Z] // characters
int 		[0-9] //numbers
type 		{"float"|"int"|"bool"} // var types, i dont think this line is useful tho
float 		int+\.int // floats
bool		{"true"|"false"} // bool

%%

int 		{printf("number"); return INT} // when detecting an integer, return INT,
float	 	{printf("float number"); return FLOAT;}
bool 		{printf("bool"); return BOOL;}
const 		{printf("const"); return CONST;}
type 		{printf("type"); return TYPE;}
idf 		{printf("identifier"); return IDF}
= 		{printf("assign"); return ASSIGN;} 
var		{printf("variable"); return VAR;}

, 		{printf("comma"); return COMMA;}
; 		{printf("semicolon"); return SEMICOLON;}
:		{printf("colon"); return COLON;}

language	{printf("language"); return LANG;}
function	{printf("function"); return FUNC;}
return		{printf("return"); return RET;}
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
