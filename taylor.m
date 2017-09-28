function exp = taylor(x,n)

for i=0:n
  y(:, i+1) = x.^(i+1) ./ factorial(i+1);
end