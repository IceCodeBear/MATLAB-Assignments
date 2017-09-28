%Jie Wu
%HW 12
%Write a script that uses the trapezoidal rule and
%simpson's 1/3 rule to estimate the integration of
%the given function

%Simpson's function
handle_func = @(x) 1./(x+1);
q = simp(handle_func,2,3,4);
q_temp = quadgk(handle_func,2,3);
function sr = simp(handle_func,a,b,n)
    h = (b-a)/n;
    new_sum = 0;
    for i = 0;n;
        s =  1/3*(4*handle_func(a+i*h));
        new_sum = new_sum+s;
    end
    new_sum = new_sum - 1/3*(3*h_f(a)+3*h_f(b)+2*h_f(a+2*h));
    sr = new_sum*h;
end

%{
Sample run

q = 
    0.2877

q_temp =

    0.2877
%}