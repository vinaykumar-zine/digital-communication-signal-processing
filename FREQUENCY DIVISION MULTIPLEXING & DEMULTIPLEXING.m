close all;
clear all;
clc;
Fs = 100; % sampling freq
t = [0:2*Fs+1]'/Fs;
x1 = sin(2*pi*2*t); % signal 1 signal
z1 = fft(x1);
z1=abs(z1);
x2 = sin(2*pi*10*t); % signal 2 signal
z2 = fft(x2);
z2=abs(z2);
figure;
subplot(4,1,1);
plot(x1);
title('signal 1');
xlabel('time');
ylabel('amplitude');
subplot(4,1,2);
plot(x2);
title('signal 2');
xlabel('time');
ylabel('amplitude');
subplot(4,1,3);
plot(z1);
title('Spectrum of signal 1');
xlabel('freqency');
ylabel('magnitude');
subplot(4,1,4); 
plot(z2);
title('Spectrum of signal 2');
xlabel('freqency');
ylabel('magnitude');
% freqency multiplexing
z=z1+z2;
figure;
plot(z);
title('frequency multiplexed signals');
figure;
% freqency demultiplexing
f1=[ones(10,1); zeros(182,1);ones(10,1)];%applying filter for signal 1
dz1=z.*f1;
d1 = ifft(dz1);
subplot(2,1,1)
plot(t*100,d1);
f2=[zeros(10,1); ones(182,1);zeros(10,1)];% applying filter for signal 2
dz2=z.*f2;
d2 = ifft(dz2);
title('recovered signal 1');
xlabel('time');
ylabel('amplitude');
subplot(2,1,2)
plot(t*100,d2);
title('recovered signal 2');
xlabel('time');
ylabel('amplitude');
