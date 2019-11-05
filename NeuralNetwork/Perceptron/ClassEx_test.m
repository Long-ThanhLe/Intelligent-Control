TEST = [-1 ; 38 ; 16];
X_TEST = [ -1; my_perceptron(w11,TEST); my_perceptron(w12,TEST)];
y1= my_perceptron(w_1, X_TEST);
y2= my_perceptron(w_2, X_TEST);
y3= my_perceptron(w_3, X_TEST);
y4= my_perceptron(w_4, X_TEST);
Y_TEST = [y1 y2 y3 y4]