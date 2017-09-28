//Name: Jie Wu
//Assignment: HW3
//Due Date: 7/13/17
//Use a loop to calculate the possible values for x


a = [29 26 25 22]
total_sum = sum(a)
n = size(a,2)
for i = 1:n
    x(i) = (total_sum/(n-1)) - a(i)
end


