-module(forloop).
-export([for/2, start/0]).

%if 0 count is reached then exit by
%returning an empty list
for(0,_) -> 
	[];
%The function below takes one element of a 
%list at a time
%for(N, [Term| R]) -> 
%	io:fwrite("In for()\n"),
%	io:fwrite("Considering ~w~n", [Term]),
%	%this is where the loop happens
%	[Term | for(N-1, R)].

%The function below considers the entire
%element(Term) for the specified number
%of iterations
for(N, Term) -> 
	io:fwrite("In for()"),
	[Term | for(N-1, Term)].

start() -> 
	io:fwrite("In start()\n"),
	%Comment below line if you want to 
	%consider each element individually
	for(5,1).

	%Uncomment the below lines if you are
	%considering each element of a list
	%one at a time.
	%X=[10,20,30,40,50],
	%for(5,X).

