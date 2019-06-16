E_b=1:0.1:10;
d=2*E_b;
N=1;
U=0;
y=d/sqrt(N/2);
function y = qfunc(x)
  
  y = 0.5*erfc(x/sqrt(2));
  
  endfunction
P=qfunc(y);
plot(E_b,P);
xlabel("")
