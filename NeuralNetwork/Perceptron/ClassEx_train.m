X = [-1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1;...
      30 37 35 10 12 15 37 35 33 53 58 59;...
      11 11 12 12 11 13 18 17 17 11 13 12];
D1 = [0 0 0 1 1 1 1 1 1 0 0 0];
D2 = [0 0 0 0 0 0 1 1 1 1 1 1];

w11 = train_perceptron(X,D1);
w12 = train_perceptron(X,D2);

X_train = [-1 -1 -1 -1; 0 1 1 0; 0 0 1 1];

D_1 = [1 0 0 0];
w_1 = train_perceptron(X_train,D_1);

D_2 = [0 1 0 0];
w_2 = train_perceptron(X_train, D_2);

D_3 = [0 0 1 0];
w_3 = train_perceptron(X_train, D_3);

D_4 = [0 0 0 1];
w_4 = train_perceptron(X_train, D_4);