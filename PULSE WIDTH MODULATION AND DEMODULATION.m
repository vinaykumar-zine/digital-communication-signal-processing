Clc;
Clear all;
fc=1000; fs=10000; f1=200;
t=0:1/fs:((2/f1)-(1/fs)); 
x1=0.4*cos(2*pi*f1*t)+0.5; %modulation 
y1=modulate(x1,fc,fs,'pwm'); 
subplot(421);
plot(x1);
title('original signal tokne mesage,f1=500,fs=10000') ;
subplot(422);
plot(y1);
axis([0 500 -0.2 1.2]);
title('PWM')
%demodulation x1_recov=demod(y1,fc,fs,'pwm'); subplot(423);
plot(x1_recov);
title('time domain reoverd recoverd,sigle tone,f1=200');