% Jie Wu
% HW18
% Due Date:8/8/17
% write a program to test the commutative property for A and C

A = [7 6;2 3];
C = [4 9;3 -2];
A_C = A*C;
C_A = C*A;
isequal(A_C,C_A)

%{
Sample Run

ans =

  logical

   1

%}
