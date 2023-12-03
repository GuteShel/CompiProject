# CompiProject
I will include the code here, 
If you want to edit our code, then **create a new branch**, do your edits there, and then do a **pull request** and i will accept it inshallah
## COMMENTS ON FLEX FILE
Please note tha i cannot comment in certain areas in the flex file, so i will write some notes here instead
**Firstly:** if you run the [flex projet.l] command you will notice that it will show erros regarding the [return TOKEN], this is because we didn't include the projet.y (bison file) yet, the tokens are still unknown!

**Secondly:** The code starts with simple basic declarations, they will make the code less complex.

**Thirdly:** the code will firstly print the token read, THEN return the tokens, i made it this way to facilitate the work for us

## FLEX CODE PARTS:
The flex code is separated into four parts: 
First: the variables and definitions
Secondly: the seperators
Thirdly: complex entities
Forthly: spaces and newlines 
