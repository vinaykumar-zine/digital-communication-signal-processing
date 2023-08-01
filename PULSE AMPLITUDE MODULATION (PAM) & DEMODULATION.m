clc;
close all;
clear all;
t=0:1/6000:((10/1000)-(1/6000)); 
xa=sin(2*pi*100*abs(t));
Ts=32;
x=sin(2*pi*600*(Ts*t));
X=fft(xa,abs(x));
subplot(3,1,1);
plot(x,a); 
grid
subplot(3,1,2);
stem(X); 
grid
Y=ifft(xa,X);
subplot(3,1,3);
plot(Y);
grid