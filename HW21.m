%Jie Wu
%HW21
%Due Date: 8/7/2017
%Write the MATLAB program that uses Monte-Carlo method for computation

f = @(x) x.^3;
correct = quadgk(f,2,3); %Build-In MATLAB function

n = 0;

u = 2:0.01:3;
v = f(u);
plot(u,v)
axis([ 2 3 0 27 ])
grid on
n_inside = 0;
for j = 1:10
    x = 2+rand(100,1);
    y = 27*rand(100,1);
    for i = 1:100
        text('interpreter', 'latex',...
            'string', '$$\cdot$$',...
            'position', [x(i) y(i)],...
            'fontsize',30,...
            'color',[1 .2 .2]) %RGB for red
        if (x(i)^3 >= y(i))
            n_inside = n_inside +1;
        end
        n = n +  x(i)^3;
    end

integral_estimate = (n_inside*27)/(j*100);
text('interpreter', 'latex',...
            'string', ['Integral = ', num2str(integral_estimate) ],...
            'position', [2.7 6],...
            'fontsize',30,...
            'horizontalalignment', 'center',...
            'backgroundcolor',[.3 1 .3],...
            'edgecolor','g') %'r
        pause;
end