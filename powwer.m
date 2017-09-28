function y = powwer(x,n)
if n < 0
    fprintf(' Error in function powwer \n')
    fprintf(' second argument must be a natural number \n')
else
    powwer = 1;
    if n > 0
        for k = 1:n
            powwer = powwer * x;
        end
    end
    y = powwer;
end
keyboard;
end
