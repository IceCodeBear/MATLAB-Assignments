% Jie Wu
% Due date: 7/31/17
% HW 10: Interpolate the x and y values to a polynomial
% of the 3rd power and create a plot with the following criteria:
% 1. The point from the data set should be in red circles
% 2. Display the best-fit in a blue dotted line.
% 3. Label you plot with a descriptive title.

x = [-3 -2 -1 0 1 2 3];
y = [-28 -9 -1 0.025 1.025 9 27.5];
n = 3;
p = polyfit(x,y,n);
xi = linspace(-3,5, 200);
yi = polyval(p,xi);
plot(x,y,'ro',xi,yi,': b');
title('Interpolate the x and y values');