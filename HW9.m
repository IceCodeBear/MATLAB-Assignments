%Jie Wu
%HW 9
%Due Date: 7/27/2017

%{
1. If the same predator prey equations as above still apply except that now
due to environmental protection 70% of seals survive to the next year, we do
not know the initial population vector, x0, but we know that the ratio of seals
to cod after 5 years is 1.0275, what must be x0?
%}
>> A = [0.7 0.5; -0.24 1.4];
>> x5 = [1;1.0275];
>> A^5 \ x5

ans =

    0.1897
    0.3793
%{
2. Write an M file that allows you to see the effect of the population sizes in the
long term, with k being an input parameter. What ratio of seals to cod does the
population approach? Why?
%}

[V,L] = eig(A);
L1 = L(1,1);
L2 = L(2,2);
u = V(:,1)
v = V(:,2)
su = u(2)/u(1);
sv = v(2)/v(1);

x = [u,v];
y = linsolve(x,x0);
c1 = y(1,1);
c2 = y(2,1);
k = 1000;
for i = 1:k
    x(:,1) = x0;
    x(:,i+1) = cl*(L1)^i*(u) + c2*(L2)^i*(v);
    r = x(2,1)/x(1,i);
end

