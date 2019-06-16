clear all
clf();
h=10;
p=0:10:100;
N=1;
SNR=sqrt(h^2*p/N);
P_e=1/(2*SNR);
plot("ln",P_e,p,'r');
xlabel("power of signal");
ylabel("BER of wireless");
title("BER of wireless");
