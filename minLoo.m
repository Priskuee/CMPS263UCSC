function w=minLoo(X,y)
    [t,n] = size(X);
    sol = linprog([1, zeros(1,n)]', [-ones(2 * t,1), [X;-X]], [y; -y]);
    w = sol(2:end);
endfunction
