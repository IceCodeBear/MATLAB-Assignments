function B = rowscale(A,i,c)
%The command rowscale(A,i,c) multiplies
%row i of the matrix A by the scalar c
%and output the resulting matrix.
% m = size(A,1)
    [m,n]=size(A);
    if i<1 || i>m
        error('Index out of range')
    end
    B = A;
    B(i,:) = c*A(i,:);
end 