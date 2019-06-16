clear all;
clf();
P_s=0:10:1000;
S=100;
h1=15;
h2=20;
SNR=(h1^2+h2^2)*P_s/S;
function y = qfunc(x)
  
  y = 0.5*erfc(x/sqrt(2));
  
  endfunction
P_e=qfunc(sqrt(SNR));
plot2d("ln",P_e,P_s,style=2);
xlabel("power");
ylabel("probability of error");
title("Alamouti coding");

