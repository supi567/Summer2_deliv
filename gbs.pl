swap([X, Y|Rest], [Y, X|Rest]) :- X>Y.  
%It is interchanged, when X>Y.
swap([Z | L1], [Z | L2]):- swap(L1, L2).
%To print an element and swap the rest of the list.
%Call the rest of the list.
bubble(List, Sort) :- swap(List, List1), !,
bubble(List1, Sort).
bubble(sor, sor).