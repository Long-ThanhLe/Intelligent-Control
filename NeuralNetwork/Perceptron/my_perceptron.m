function y = my_perceptron(w,x)
net = w'*x;
if net < 0
    y = 0;
else
    y = 1;
end
end