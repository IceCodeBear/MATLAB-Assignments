%Jie Wu
%HW 12
%Write a script that uses the trapezoidal rule and
%simpson's 1/3 rule to estimate the integration of
%the given function

%Trapezoidal Function
handle_func = @(x) 1./(x+1);
q = trapz(handle_func,2,3,4);
q_temp = quadgk(handle_func,2,3);
function tr = trapz(handle_func,a,b,n)
    h = (b-a)/n;
    new_sum = 0;
    for i = 0;n;
        s =  1/2*(2*handle_func(a+i*h));
        new_sum = new_sum+s;
    end
    new_sum = new_sum - 1/2*(h_f(b)+h_f(a));
    tr = new_sum*h;
end

%{
Sample run
q = 
    0.2878

q_temp =

    0.2877

%}