%{
	#include <stdio.h>
	#include <stdbool.h>
%}

%token <char[10]> IDF // because the idf can be 10 characters long

%token <float> FLOAT
%token <int> INT
%token <bool> BOOL
%token <char[5]> TYPE

%token <int> INT_CONST
%token <float> FLT_CONST
%token CONST

%token <char> COMMA
%token <char> COLON
%token <char> SEMICOLON
%token <char> ASSIGN

%token <char> EQUAL
%token <char> GTR
%token <char> GTE
%token <char> LT
%token <char> LE
%token <char> ADD
%token <char> SUB
%token <char> MULT
%token <char> DIV

%token <char[10]> LANG
%token <char[10]> FUNC
%token <char[6]> RET // = return
%token <char> VAR
%token <char[5]> BEGIN
%token <char[3]> END
%token <char[2]> IF
%token <char[5]> WHILE

%union {
	// take in numbers
	int num;
	float number;
	
	// take in bool
	bool value;
	
	// take in the symbols, keywords and variables
	const char[10] word; // to avoid memory managment for the pointer...
}

%start program

%%
program	: BEGIN code END
	;

code	: declarations comment | declaration comment | affectation comment | for comment | if comment 
	;

comment	: div div | 
	;

