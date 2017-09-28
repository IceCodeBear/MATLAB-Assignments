% Jie Wu
% Due date: 7/31/17
% HW #11: In MATLAB, use vander to find the
% coefficients of the cubic polynomial
% p(x) = ax7 + bx6 + cx5 + dx4 + ex3 + fx2 + gx + h
% whose graph goes through the points:
% (2, 1), (5, 3), (8, 7), (11, 15),
% (14, 9), (19, 7), (22, 4), (28, 1).

x = [2;5;8;11;14;19;22;28];
A = vander(x);
y = [1;3;7;15;9;7;4;1];
p = A\y

%{

Sample run

>> u = 2:.1:28;
>> v = polyval(p,u);
>> plot(u,v)

%}
