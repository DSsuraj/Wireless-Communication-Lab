clc
clear all

ns=100;
nbit=52;
snr=-10:18;
for k=1:length(snr)
ber=0;
for i=1:ns
  data=rand(1,nbit)>0.5;
  mdata=2*data- 1 ;  
  ofdmin=[mdata zeros(1,12)];
  ofdmsym=ifft(ofdmin);
  sigpow=ofdmsym*ofdmsym';
  noisepow(k)=sigpow/(10^(snr(k)/10));
  
  noise=sqrt(noisepow(k))*(rand(1,64,"normal")+sqrt(-1)*rand(1,64,"normal"));
  ofdmsym_rx=ofdmsym+noise;
  rxdata=fft(ofdmsym_rx);
  rxmdata=rxdata(1:52);
  outdata=real(rxmdata)>0;
  err(i)=sum(outdata~=data);
  
end
ber=mean(err)/52;
ber1(k)=ber;
end
figure(1)
plot(snr,ber1)
xlabel('SNR')
ylabel('BER')
title('BER cureve for OFDM system over AWGN channel')
