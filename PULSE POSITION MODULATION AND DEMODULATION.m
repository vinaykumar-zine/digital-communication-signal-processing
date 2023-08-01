clc;
clear all;
close all; 
fc=100; fs=1000;
f1=80; f2=300 ;
t=0:1/fs:((2/f1)-(1/fs)); 
x1=0.4*cos(2*pi*f1*t)+0.5;
%x2=0.2*(cos(2*pi*f1*t)+cos(2*pi*f2*t))+0.5 ;
subplot(4,2,1);
plot(x1);
title('original msg signal');
y1=modulate(x1,fc,fs,'ppm');
subplot(4,2,2);
plot(y1)
axis([0 50 -0.2 1.2]);
 title('ppm one of f1,fc=1000,f1=80 ');
fx1=abs(fft(y1,1024)) ;
fx1=[fx1(512:1024) fx1(1:513)];
f=[(511*fs/1024):(fs/1024):(512*fs/1024)];
subplot(4,2,3);
plot(fx1);
title('freq des ppm signal tone,fc=1000');
x1_recov = demod(y1,fc,fs,'ppm');
subplot(4,2,4);
plot(x1_recov);
title('time domain recovered signal');