%Jie Wu
%HW17
%Due Date: 8/7/17
%Derive the system of equations to compute coefficients of cubic
%polynomials that go through four points. Write a script to plot each
%data point and cubic with different colors to clearly show them.

x = [-1 0 1 2];
y = [4 5 2 3];
plot(x,y,'x')
hold on

A = [-1 1 -1 1   0  0  0 0   0  0  0 0;  % s1(-1)   = 4
      0 0  0 1   0  0  0 0   0  0  0 0;  % s1(0)    = 5
      0 0  0 0   0  0  0 1   0  0  0 0;  % s2(0)    = 5
      0 0  0 0   1  1  1 1   0  0  0 0;  % s2(1)    = 2
      0 0  0 0   0  0  0 0   1  1  1 1;  % s3(1)    = 2
      0 0  0 0   0  0  0 0   8  4  2 1;  % s3(2)    = 3
      0 0  1 0   0  0 -1 0   0  0  0 0;  % s1'(0)   = s2'(0)
      0 0  0 0   3  2  1 0  -3 -2 -1 0;  % s2'(1)   = s3'(1)
      0 2  0 0   0 -2  0 0   0  0  0 0;  % s1''(0)  = s2''(0)
      0 0  0 0   6  2  0 0  -6 -2  0 0;  % s2''(1)  = s3''(1)
      0 0  0 0   0  0  0 0  12  2  0 0;  % s1''(-1) = 0
      0 0  0 0   6  2  0 0   0  0  0 0]; % s3''(2)  = 0

b = [4;5;5;2;2;3;0;0;0;0;0;0];

c = A\b;

x1 = -1:0.01:0;
s1 = c(1)*x1.^3 + c(2)*x1.^2 + c(3)*x1 + c(4);
plot(x1,s1)
hold on

x2 = 0:0.01:1;
s2 = c(5)*x2.^3 + c(6)*x2.^2 + c(7)*x2 + c(8);
plot(x2,s2)
hold on

x3 = 1:0.01:2;
s3 = c(9)*x3.^3 + c(10)*x3.^2 + c(11)*x3 + c(12);
plot(x3,s3)