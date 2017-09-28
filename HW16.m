% Jie Wu
% HW #16
% Due Date: 8/3/17
% Write a script file containing the commands to solve this system 
% by the zoom in method. Make sure you have found all solutions.

x = -10:0.01:10;
y = 1./x;
z = exp(2*x) - 1;
plot(x,y,x,z)
grid on
x1 = 0.52;
x2 = 0.54;
y1 = 1/x1;
y2 = 1/x2;
z1 = exp(2*x1) - 1;
z2 = exp(2*x2) - 1;
m1 = (y2-y1)/(x2-x1);
m2 = (z2-z1)/(x2-x1);
r = (x1*(m1 - m2) + z1 - y1)/(m1 - m2)
i = 1/r
j = exp(2*r) - 1;
x2_1 = -1.12;
x2_2 = -1.14;
y2_1 = 1/x2_1;
y2_2 = 1/x2_2;
z2_1 = exp(2*x2_1) - 1;
z2_2 = exp(2*x2_2) - 1;
m2_1 = (y2_2-y2_1)/(x2_2-x2_1);
m2_2 = (z2_2-z2_1)/(x2_2-x2_1);
r2 = (x2_1*(m2_1 - m2_2) + z2_1 - y2_1)/(m2_1 - m2_2)
i2 = 1/r2;
j2 = exp(2*r2) - 1
hold on
axis([-10 10 -10 10]);
plot(r,i,'ro',r2,j2,'ro');

%{
Sample Run
r =

    0.5301


i =

    1.8866


r2 =

   -1.1193


j2 =

   -0.8934
%}