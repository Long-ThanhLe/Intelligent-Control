function y = union(x1,x2)
N =length(x1);
y = zeros(size(x1));
for k=1:N
   % y(k)=min(1,x1(k)+x2(k)); %BSUM
    y(k)=max(x1(k),x2(k)); %MAX
end
end