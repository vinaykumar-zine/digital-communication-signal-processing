fs=8000;
fm=20;
fc=50;
Am=1;
Ac=1;
t=[0:0.1*fs]/fs;
subplot(4,1,1);
m1=Am*cos(2*pi*fm*t);
plot(t,m1);
title('Message Signa m1'); 
m2=Am*sin(2*pi*fm*t); 
subplot(4,1,2) 
plot(t,m2);
title('Message Signa m2'); 
c1=Ac*cos(2*pi*fc*t); 
subplot(4,1,3)
plot(t,c1)
title('Carrier Signal c1'); 
c2=Ac*sin(2*pi*fc*t); 
subplot(4,1,4) 
plot(t,c2)
title('Carrier Signal c2'); 
Susb=0.5*m1.*c1-0.5*m2.*c2;
plot(t,Susb);
title('SSB-SC Signal with USB'); 
subplot(4,1,5); 
plot(t,Susb);
Slsb=0.5*m1.*c1+0.5*m2.*c2; 
subplot(4,1,6);
plot(t,Slsb);
title('SSB-SC Signal with LSB'); 
r = Susb.*c1;
[b a] = butter(1,0.001); 
mr= filter(b,a,r); 
subplot(4,2,5); 
plot(t,mr);
