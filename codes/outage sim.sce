clf()
clear
B=10;
P_s=10;
lambda=20;
R=10:1:200;
t=2;
N=100;
Y=grand(N,N,"exp",lambda);
for i=1:1:length(R)
    X(i)=sum((((P_s*Y^2)/t)<(2^(R(i)/B)-1))/10000);
end
plot(R,X);
xlabel("rate");
ylabel("probability");
title("outage simulation");
