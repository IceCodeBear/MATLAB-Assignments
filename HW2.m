
Name: Jie Wu
Assignment: HW2
Due date: 7/12/2017

a. create the following 
     1     0     0     1     2
     0     1     0     3     4
     0     0     1     5     6
     0     0     0     0     7

% diag(ones(1,3))
% b = ans
% a = [1 2; 3 4; 5 6]
% c = [b a]
% d = zeros(1,5)
% d(1,5) = 7
% d = [c;d]

sample code:
>> diag(ones(1,3))

ans =

     1     0     0
     0     1     0
     0     0     1

>> b=ans

b =

     1     0     0
     0     1     0
     0     0     1

>> a=[1 2; 3 4; 5 6]

a =

     1     2
     3     4
     5     6

>> c=[b a]

c =

     1     0     0     1     2
     0     1     0     3     4
     0     0     1     5     6

>> d = zeros(1, 5)

d =

     0     0     0     0     0

>> d(1,5)=7

d =

     0     0     0     0     7

>> d=[c;d]

d =

     1     0     0     1     2
     0     1     0     3     4
     0     0     1     5     6
     0     0     0     0     7

b. Create the following

     0     0     0     1
     0     0     1     0
     0     1     0     0
     1     0     0     0

% e = ones(1,4)
% diag(e)
% e = ans
% rot90(e)

sample run:
>> e = ones(1,4)

e =

     1     1     1     1

>> diag(e)

ans =

     1     0     0     0
     0     1     0     0
     0     0     1     0
     0     0     0     1

>> e = ans

e =

     1     0     0     0
     0     1     0     0
     0     0     1     0
     0     0     0     1

>> rot90(e)

ans =

     0     0     0     1
     0     0     1     0
     0     1     0     0
     1     0     0     0

