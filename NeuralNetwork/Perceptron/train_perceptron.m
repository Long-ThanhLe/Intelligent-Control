function w = train_perceptron(X,D)
% So hang cua X la so hang cua perceptron (m)
% So cot cua X la so mau du lieu (K)
% So hang cua D bang so ngo ra cua mang Perceptron
[m,K] = size(X);
w = rand(m,1);
eta = 0.4;
E = 0;
end_flag = 0;

while ~end_flag 
    for k = 1:K
       y(k) = my_perceptron(w,X(:,k));
       w = w + eta*(D(k) - y(k))*X(:,k);
       E = E + 0.5*(D(k) - y(k))*(D(k) - y(k));
    end
    
    if E == 0
        end_flag = 1;
    else
        E = 0;
    end
end
end
