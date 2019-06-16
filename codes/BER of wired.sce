clf();
h=10;
P=0:10:100;
N=1;
SNR=sqrt(h^2*P/N);
function y = qfunc(x)
  
  y = 0.5*erfc(x/sqrt(2));
  
  endfunction
P_b=qfunc(-SNR/2);
plot("ln",P_b,P,'r');
xlabel("signal power");
ylabel("Bit error  Rate");
title("BER of wired");
