x = load('enorme_gachis.sig');
fs=1000;
 
N=1024;
plot(x);
figure(1);
 
figure(2);
 
y = fftshift(abs(fft(x,N)));
%fa = -fs/2:fs/N:fs/2;
fa = linspace(-fs/2*100,fs/2*100,N);
plot(fa,y);
 
figure(3);
b=fir1(48,[0.35,0.65]);
freqz(b,1,512);
