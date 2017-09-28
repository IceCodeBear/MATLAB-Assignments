function B=rowcomb(A,i,j,c)
%The cammand rowcomb(A,i,j,c) forms a matrix
%from A by adding c times the ith row of A
%to the jth row.
    [m,n]=size(A);
    if i<1 | i>m | j<1 | j>m
        error('index out of range')
    end
    B=A;
    B(j,:)=c*A(i,:)+A(j,:);
end