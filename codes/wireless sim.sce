
h=100;
t=10;
P=0:10:100;
N_o=grand(1,10000,"exp",2);
S=10^(P/10);
for i=1:1:length(S)
    K=(S(i)*h^2/N_o);
    X(i)=sum(K<t)/10000;
end
plot2d("ln",X,S,style=2);
plot(X,S);
