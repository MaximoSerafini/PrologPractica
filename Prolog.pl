% Fact 1: Socrates is human
human(Socrates).
godess(artemisa).

%Premise/Rule 2: All humans are mortal.
mortal(x) :- human(x).
in_olimpus(X) :- godess(X).

:- initialization(main).
main :- write('Is Socrates mortal ? '),
  (mortal(Socrates) ->
    write('Yes') ;
    write('No')
  ),
  nl,
  write('Is Artemisa mortal ? '),
  (mortal(artemisa) ->
    write('Yes') ;
    write('No')
  ),
   nl,
    write('Is Artemisa godess? '),
    (godess(artemisa) -> 
        write('Yes') ;
        write('No')
    ),
     nl,
    write('Is Artemisa in olimpus? '),
    (in_olimpus(artemisa) -> 
        write('Yes') ;
        write('No')
    ),
    halt(0).