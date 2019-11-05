function y = intersection(x1,x2)
N =length(x1);
y = zeros(size(x1));
for k=1:N
    y(k)=min(x1(k),x2(k)); %Min
   % y(k)=x1(k)*x2(k); %Prod
end
end