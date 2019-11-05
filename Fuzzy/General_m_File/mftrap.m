function y=mftrap(x,L,C1,C2,R) %mf:membership function, trap: hinh thang
N=length(x);
y = zeros(size(x)); % khoi dong ma tran y = 0
for k=1:N
    if x(k) < L
        y(k) = 0;
    elseif x(k) <C1
        y(k) = (x(k)-L)/(C1-L);
    elseif x(k)< C2
        y(k) = 1;
    elseif x(k) <R 
        y(k) = (R-x(k))/(R-C2);
    else y(k)= 0;
    end
end

end