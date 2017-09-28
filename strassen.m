% Jie Wu
% Matlab HW7
% Due: 07/25/2017
% write a script for strassen function


function C = strassen(A,B)
[n,n] = size(A);

    if(n > 1)
        size_n = n/2;
        A11 = A(1:size_n, 1:size_n);
        A12 = A(1:size_n, (size_n + 1):end);
        A21 = A((size_n + 1):end, 1:size_n);
        A22 = A((size_n + 1):end, (size_n + 1):end);
        B11 = B(1:size_n, 1:size_n);
        B12 = B(1:size_n, (size_n + 1):end);
        B21 = B((size_n + 1):end, 1:size_n);
        B22 = B((size_n + 1):end, (size_n + 1):end);
        
        M1 = strassen(A11 + A22, B11 + B22);
        M2 = strassen(A21 + A22, B11);
        M3 = strassen(A11, B12 - B22);
        M4 = strassen(A22, B21 - B11);
        M5 = strassen(A11 + A12, B22);
        M6 = strassen(A21 - A11, B11 + B12);
        M7 = strassen(A12 - A22, B21 + B22);
        
        C11 = M1 + M4 - M5 + M7;
        C12 = M3 + M5;
        C21 = M2 + M4;
        C22 = M1 - M2 + M3 + M6;
        C = [C11, C12; C21, C22];
    else
        C = A * B;
    end
end

