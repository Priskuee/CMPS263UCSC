function w=min2Poly(X,y,d)
    Xn=X;
    t=length(X);
    for i=1:d-1
        Xn=[Xn.*X,X];
    end
    w=Xn\y;
endfunction