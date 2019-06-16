d=0:0.1:10;
k=50;
P_r=2000;
P_t=100;
m=0.01;
x=log(d);
y=(k-m*log(d));
plot(x,y);
xlabel("Distance");
ylabel("Pathloss Constant");
title("Pathloss");

