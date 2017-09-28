function y = humps(x)
% y = humps(x), 1./((x-.3).^2+.01)+1./((x-.9).^2+.04)-6
% file name: humps.m
% x is a scalar
% y is a scalar
%
y = 1 ./((x-.3).^2+.01)+1./((x-.9).^2+.04)-6;
end
%in the command window
% >> x=linspace(-2,2,200);
% >> y=humps(x);
% >> plot(x,y)