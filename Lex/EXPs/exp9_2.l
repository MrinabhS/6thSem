/* lex program to accept strings generated by the regex: [0+1]* */

%{
	#include<stdbool.h>
	bool accepted=true;
%}

%%

[01]* {accepted=true;}
. {accepted=false; return 0;}
\n {return 0;}

%%

int main(void)
{
	yylex();

	if(accepted==true)
		printf("\nString accepted!!\n");
	else
		printf("\nString rejected!!\n");

	return 0;
}
