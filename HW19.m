% Jie Wu
% HW19
% Due Date: 8/7/2017
% write a program that finds the coefficient of the polynomial 
% of sum of i^4+i^2+1 
 
v = 0:1:3;
A = vander(v); %returns the vandermonde matrix
x1 = [0 1 1+2^2 1+2^2+3^2]';
x = A\x1;

u = 0:1:5;
B = vander(u);  %returns the vandermonde matrix
x2 = [0 1 1+2^4 1+2^4+3^4 1+2^4+3^4+4^4 +1+2^4+3^4+4^4+5^4]';
y = B\x2;
 
w = [0; 0; 0; 0; 1; 1]+[0; 0; x]+y;

%{
sample run
w =

    0.2000
    0.5000
    0.6667
    0.5000
    1.1333
    1.0000      
%}

