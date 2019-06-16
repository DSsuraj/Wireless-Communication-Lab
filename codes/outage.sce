B=100;
R=0:10:100;
S=3;
P=10;
l=20;
O=1-exp((-l*(2^(R/B)-1)*S^2)/P);
plot(R,O);
xlabel("rate of transmission");
ylabel("probability of outage");
title("Outage probability");

