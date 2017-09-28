function rowswap(A,i,j)
%The command rowswap(A,i,j) interchnages
%row i and j of the matrix A and outputs
%the resulting matrix
    [m,n]=size(A);
    if i<1 |i>m | j<1 | j>m
        error('index out of range')
    end
   B=A;
   B(i,:)=A(j,:);
   B(j,:)=A(i,:);
end
% only a script that you use a for loop
%name
%data
