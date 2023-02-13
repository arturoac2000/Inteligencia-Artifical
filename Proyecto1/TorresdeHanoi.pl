hanoi(1,X,Y, _):-
    write(" Muevo el disco superior del poste"),
    write(X),
    write(" al poste "),
    write(Y),
    nl.
hanoi(N,X,Y,Z):-
    N>1,
    M is N-1,
    hanoi(M,X,Z,Y),
    hanoi(1,X,Y, _),
    hanoi(M,Z,Y,X).

trace, hanoi(3,izquierdo,centro, derecho).
