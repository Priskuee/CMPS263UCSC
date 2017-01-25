function e=error(X,w,y)
    estimate=X * w;
    diff=y-estimate;
    e=[sum(abs(diff)),sqrt(sum(diff)),max(abs(diff))];
endfunction