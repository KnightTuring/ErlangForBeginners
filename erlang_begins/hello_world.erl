%keep module name same as file name ( no .erl extension obviously :/ )
-module(hello_world).
%we will be using fwrite() from the io module to print O/P to the screen
%it takes 1 argument which is the string to be printed to the console.
-import(io, [fwrite/1]).
%now export our function so that it can be used. The function name is main
%and it takes 0 arguments.
-export([main/0]).

%function definition begins
main() -> 
	fwrite("It begins.\n"). %print this to the screen
