theta1 = rand(1,1000)*pi - pi/2;
theta2 = rand(1,1000)*pi - pi/2;
l1 = 0.3;
l2 = 0.5;

X = l1*cos(theta1) + l2*cos(theta1 + theta2);
Y = l1*sin(theta1) + l2*sin(theta1 + theta2);
IN = [ theta1 ; theta2];
D = [X;Y];
net = newff( IN , D , 50, {'tansig','purelin'});
net = train(net , IN, D);

figure(1)
plot(X,Y, 'ro');

theta10 = rand(1,100)*pi - pi/2;
theta20 = rand(1,100)*pi - pi/2;
position = sim(net, [theta10; theta20]);

figure(2)
plot(position(1,:), position(2,:), 'bx');