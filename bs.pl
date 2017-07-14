bubbleSort(L,L) :- inOrder(L). 
%If L is already sorted, we are done.
bubbleSort(L1,L2) :- 
%For a list L2, to be a sorting for L1, sould swap adjacent numbers.
 append(X,[A,B|Y],L1), A>B,
 %Partioning L1 into two lists, X and [A,B|Y]. Two adjacent values in L i.e., A & B, verify if they are out of order(A>B).
 append(X,[B,A|Y],T),
 %Determining that list T is the input, with A& B swapped into B&A.
 bubbleSort(T,L2).
 %Verifying bubbleSort(T,L2). i.e., T may be bubblesorted into L2.