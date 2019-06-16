M=4;
N=1.5;
d=1:0.1:10;
y=d*sqrt(N/2);
function y = qfunc(x)
  
  y = 0.5*erfc(x/sqrt(2));
  
  endfunction
x=1-((1-(2*(M-1)*qfunc(y))/M)^2);
plot(d,x);
xlabel("amplitude");
ylabel("Bit Error rate");
title("QAM");
