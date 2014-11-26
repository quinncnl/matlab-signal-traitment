fs=48000;
t=0:1/fs:5;
f=1000;
 
N=1024;
x=sin(2*pi*f*t);
 
plot(t,x);
xlim([0 0.01]);
 
figure(1);
%stem(t,x,'r');
figure(2);
y = fftshift(abs(fft(x,N)));
fa = -fs/2:fs/N:fs/2;
fa = linspace(-fs/2,fs/2,N);
plot(fa,y);
 
b = 4;
max = 2^(b-1);
quantized = floor(x*max);
 
figure(3);
plot(t, quantized, 'b-o');
xlim([0 0.002]);
 
figure(4);
y = fftshift(abs(fft(quantized,N)));
plot(fa,y);
 
%stem(t*1/fs*1000,x,'r');
%hold on;
