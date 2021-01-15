clc; clear all; close all;  
%Code for FSK
b = input('enter desired message signal bit steam using 3rd bracket: ');    
n = length(b);   
mt = [];
for i = 0: 1: n-1;    
    mt( (i*100)+1: 1: ((i+1)*100)+1 ) = b(i+1); 
end
t = 0: 0.01: n; 
fc = 3; 
f_dev = 3; 
ct = sin(2*pi*fc*t);     
fsk = sin(2*pi*(fc + f_dev*mt).*t);        
subplot(3,1,1); 
plot(t,ct, 'b', 'linewidth',2); 
grid on; 
title('Hassan - 1421553043')
legend('Carrier Wave'); 
ylim([-1.2 1.2]);
subplot(3,1,2);
plot(t,mt, 'r', 'linewidth',2); 
grid on; 
title('Hassan - 1421553043')
legend('Input Bit Stream');
ylim([-1.2 1.2]);   
subplot(3,1,3); 
plot(t,fsk, 'b', 'linewidth',2); 
grid on; 
title('Hassan - 1421553043')
legend('BFSK Wave'); 
ylim([-1.2 1.2]);