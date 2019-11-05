
x1 = -1:0.001:1;
x2 = -1:0.001:1;
y  = -4:0.001:4;
x1_NB = mftrap(x1,-2,-1,-0.7,-0.2);
x1_NS = mftrap(x1,-0.7,-0.2,-0.2,0);
x1_ZE = mftrap(x1,-0.2,   0, 0  ,0.2);
x1_PS = mftrap(x1,0  , 0.2, 0.2,0.7);
x1_PB = mftrap(x1,0.2,0.7,1,2);


figure(1);
subplot(1,3,1);
hold on
plot(x1,x1_NB,'b-');
plot(x1,x1_NS,'b-');
plot(x1,x1_ZE,'b-');
plot(x1,x1_PS,'b-');
plot(x1,x1_PB,'b-');

x2_NE = mftrap(x2,-2, -1, -0.6  ,0);
x2_ZE = mftrap(x2,-0.6  , 0, 0,0.6);
x2_PO = mftrap(x2,0,0.6,1,2);
subplot(1,3,2);
hold on;
plot(x2,x2_NE,'b-');
plot(x2,x2_ZE,'b-');
plot(x2,x2_PO,'b-');


y_NB = zeros(size(y)); y_NB((-3--4)/0.001) = 1;
y_NM = zeros(size(y)); y_NM((-2--4)/0.001) = 1;
y_NS = zeros(size(y)); y_NS((-1--4)/0.001) = 1;
y_ZE = zeros(size(y)); y_ZE((-0--4)/0.001) = 1;
y_PS = zeros(size(y)); y_PS((1--4)/0.001)=1;
y_PM = zeros(size(y)); y_PM((2--4)/0.001)=1;
y_PB = zeros(size(y)); y_PB((3--4)/0.001)=1;
%{
y_NM = mftrap(y,-2,-2,-2,-2);%mftrap(y,9-3,-2,-2,-1);
y_NS = mftrap(y,-1,-1,-1,-1);%mftrap(y,-2,-1,-1,0);
y_ZE = mftrap(y,0,0,0,0);%mftrap(y,-1,-0,-0,1);
y_PS = mftrap(y,1,1,1,1);%mftrap(y,0,1,1,2);
y_PM = mftrap(y,2,2,2,2);%mftrap(y,1,2,2,3);
y_PB = mftrap(y,3,3,3,3);%mftrap(y,2,3,3,4);
%}
subplot(1,3,3);
hold on;
plot(y,y_NB,'b-');
plot(y,y_NS,'b-');
plot(y,y_NM,'b-');
plot(y,y_ZE,'b-');
plot(y,y_PS,'b-');
plot(y,y_PM,'b-');
plot(y,y_PB,'b-');

%% suy luan

x1 = 0.3;
x2 = -0.4;

x1_NB = mftrap(x1,-2,-1,-0.7,-0.2);
x1_NS = mftrap(x1,-0.7,-0.2,-0.2,0);
x1_ZE = mftrap(x1,-0.2,   0, 0  ,0.2);
x1_PS = mftrap(x1,0  , 0.2, 0.2,0.7);
x1_PB = mftrap(x1,0.2,0.7,1,2);
muy_x1 = [x1_NB;x1_NS;x1_ZE;x1_PS;x1_PB];
x2_NE = mftrap(x2,-2, -1, -0.6  ,0);
x2_ZE = mftrap(x2,-0.6  , 0, 0,0.6);
x2_PO = mftrap(x2,0,0.6,1,2);
muy_x2 = [x2_NE;x2_ZE;x2_PO];
beta1 = x1_NB*x2_NE;
beta2 = x1_NB*x2_ZE;
beta3 = x1_NB*x2_PO;
beta4 = x1_NS*x2_NE;
beta5 = x1_NS*x2_ZE;
beta6 = x1_NS*x2_PO;
beta7 = x1_ZE*x2_NE;
beta8 = x1_ZE*x2_ZE;
beta9 = x1_ZE*x2_PO;
beta10= x1_PS*x2_NE;
beta11= x1_PS*x2_ZE;
beta12= x1_PS*x2_PO;
beta13= x1_PB*x2_NE;
beta14= x1_PB*x2_ZE;
beta15= x1_PB*x2_PO;
%% Ket qua suy luan
y1=beta1*y_PB;
y2=beta2*y_PM;
y3=beta3*y_PS;

y4=beta4*y_PM;
y5=beta5*y_PS;
y6=beta6*y_ZE;

y7=beta7*y_PS;
y8=beta8*y_ZE;
y9=beta9*y_NS;

y10=beta10*y_ZE;
y11=beta11*y_NS;
y12=beta12*y_NM;

y13=beta13*y_NS;
y14=beta14*y_NM;
y15=beta15*y_NB;

muy_y = union(y1,y2);
muy_y = union(muy_y,y3);
muy_y = union(muy_y,y4);
muy_y = union(muy_y,y5);
muy_y = union(muy_y,y6);
muy_y = union(muy_y,y7);
muy_y = union(muy_y,y8);
muy_y = union(muy_y,y9);
muy_y = union(muy_y,y10);
muy_y = union(muy_y,y11);
muy_y = union(muy_y,y12);
muy_y = union(muy_y,y13);
muy_y = union(muy_y,y14);
muy_y = union(muy_y,y15);

plot(y,muy_y,'r-');

K=length(y);
TS=0; MS = 0;

for k=1:K
    TS=TS+y(k)*muy_y(k);
    MS=MS+muy_y(k);
end

y_ro=TS/MS;
