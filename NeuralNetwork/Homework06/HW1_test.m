%X = [-1 -1 -1 -1 -1 -1 -1;... 
%     -1  0  0  0  0  1  2;...
%       0  2  1  0  -1 0  0];

X = [-1 ; 2 ; 0];

Y_11 = my_perceptron(w_11, X);
Y_12 = my_perceptron(w_12, X);
Y_13 = my_perceptron(w_13, X);

X_2  = [-1; Y_11 ;Y_12; Y_13];

Y_21 = my_perceptron(w_21, X_2);
Y_22 = my_perceptron(w_22, X_2);
Y_23 = my_perceptron(w_23, X_2);

Y = [Y_21; Y_22; Y_23];