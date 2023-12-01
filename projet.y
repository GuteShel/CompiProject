%{
	#include <stdio.h>
%}




%token <string> IDF

%token FLOAT
%token INT
%token BOOL
%token TYPE

%token INT_CONST
%token FLT_CONST
%token CONST

%token COMMA
%token COLON
%token SEMICOLON
%token ASSIGN

%token EQUAL
%token GTR
%token GTE
%token LT
%token LE
%token ADD
%token SUB
%token MULT
%token DIV

%token LANG
%token FUNC
%token RET
%token VAR
%token START
%token END
%token IF
%token WHILE

%union {
	// take in numbers
	int num;
	float number;
	
	// take in bool
	bool value;
	
	// take in the symbols, keywords and variables
	char* word;
}
