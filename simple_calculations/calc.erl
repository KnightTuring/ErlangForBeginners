%Filename: calc.erl
-module(calc).
-export([start/0, addFunc/2, subFunc/2, mulFunc/2]).

addFunc(Num1,Num2) ->
	io:fwrite("In add()~n"),
	Num3=Num1+Num2,
	io:fwrite("Sum is: ~w~n",[Num3]).

subFunc(Num1, Num2) -> 
	io:fwrite("In subtract()~n"),
	Num3=Num1-Num2,
	io:fwrite("Difference: ~w~n",[Num3]).

mulFunc(Num1, Num2) ->
	io:fwrite("In multiply()~n"),
	Num3=Num1*Num2,
	io:fwrite("Multiplication: ~p~n",[Num3]).


start() -> 
	io:fwrite("In start()~n"),
	addFunc(10,20),
	subFunc(20,40),
	mulFunc(20,10).
