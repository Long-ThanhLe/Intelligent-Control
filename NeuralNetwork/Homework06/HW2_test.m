X = [-1 ; 0.9 ; 0.68];

Y_11 = my_perceptron(w_11, X);
Y_12 = my_perceptron(w_12, X);

X_2  = [-1; Y_11 ;Y_12];

Y_21 = my_perceptron(w_21, X_2);
Y_22 = my_perceptron(w_22, X_2);
Y_23 = my_perceptron(w_23, X_2);

Y = [Y_21; Y_22; Y_23]