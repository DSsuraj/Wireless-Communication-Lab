    clf();
clear all
S=0:10:100;
t=100;
Y=grand(1,10000,'exp',2);
G=grand(1,10000,'exp',2);
s=10^(S/10);
for i=1:1:length(S);
    K=(S(i)*(Y^2+G^2)/2);
    X(i)=sum(K<t)/10000;
   
end
plot(S,X);
xlabel("power");
ylabel("probability of error");
title("Alamouti Simulation");

