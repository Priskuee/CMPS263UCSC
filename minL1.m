function [w] = minL1(X, y)
    [t,n] = size(X);
    sol = linprog([ones(1,t), zeros(1,n)]', [[-eye(t),X];[-eye(t),-X]], [y; -y]);
    w = sol(t+1:end);
endfunction 


