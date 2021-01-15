clc; clear all; close all;  
%Code for Phase Modulation and Phase Demodulation
t = 0:0.001:3;        
fs = 1500;
fc = 15;              
fm = 4;               
kp = pi;            
mt = 1 + square(2*pi*fm*t); 
ct = cos(2*pi*fc*t);  
x = pmmod(mt,fc,fs,kp);
y = abs(pmdemod(x,fc,fs,kp));  
subplot(4,1,1)
plot(t,mt,'b','linewidth',2);
grid on;
title('Hassan - 1421553043')
legend('Message Signal'); 
axis([0 3 -1 3]);   
subplot(4,1,2) 
plot(t,ct,'r','linewidth',2); 
grid on;
title('Hassan - 1421553043')
legend('Carrier Signal');  
subplot(4,1,3)
plot(t,x,'g','linewidth',2); 
grid on;
title('Hassan - 1421553043')
legend('Phase Modulated Signal');  
subplot(4,1,4)
plot(t,y,'m','linewidth',2);
grid on; 
title('Hassan - 1421553043')
legend('Phase Demodulated Signal');