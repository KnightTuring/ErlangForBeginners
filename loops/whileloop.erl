%======================================
% To run this code, follow these steps:
% 1 -> erl on the console
% 2 -> c(<module_name>).
% 3 -> <module_name>:<function_name>.
% NOTE THE DOTS AT THE END OF POINTS 2 
% AND 3
%======================================

%======================================
%I am not sure why this is called a
%while loop implementation, it is more 
%like a code that iterates over all 
%elements of a list. Maybe this will
%clear up as I study the chapters ahead.
%======================================
-module(whileloop). 
-import(io,[fwrite/1,fwrite/2]). 
%we will have 2 versions of while
%[while/1] and [while/2]
-export([while/1,while/2,start/0]). 

%This is the definition of [while/1].
%It is calling the actual while function
%This function just takes a list and 
%calls the actual while function by
%passing the second argument as zero.
%This function can be eliminated.
while(L) -> while(L,0). 

%This is the definition of [while/2]
%Read the semicolon as OR
%The line below is the exit condition for 
%the recursion. Which is basically when the 
%list is empty.
while([], Cnt) -> 
	fwrite("End of loop.\n"); 

%The while loop implementation below
%with the recursive exit condition above
%              ------
%The | operator is similar to the ::
%operator in Gofer, this revelation
%should clear up the working of the
%function below. :) 
while([_|T], Cnt) -> 
	fwrite("In while\n"), 
	fwrite("~w~n",[T]),  
	while(T, Cnt+1). 

start() -> 
	fwrite("In start\n"), 
	X=[10,20,30,40],
	while(X). 
