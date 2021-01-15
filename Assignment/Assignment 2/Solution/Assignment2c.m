clc; clear all;  
%Code for ASK
b = input('enter desired message signal bit steam using 3rd bracket: ');    
n = length(b); 
fc=1
mt = []; 
for i = 0: 1: n-1;    
    mt( (i*100)+1: 1: ((i+1)*100)+1 ) = b(i+1);
end
t = 0:0.01:n;           
ct = sin(2*pi*fc*t);       
ask = mt.*ct;            
subplot(3,1,1);
plot(t,ct, 'b', 'linewidth',2); 
grid on; 
legend('Carrier Wave'); 
title('Hassan - 1421553043')
ylim([-1.2 1.2]);  
subplot(3,1,2); 
plot(t,mt, 'r', 'linewidth',2);
grid on; 
title('Hassan - 1421553043')
legend('Input Bit Stream'); 
ylim([-1.2 1.2]);  
subplot(3,1,3);
plot(t,ask, 'b', 'linewidth',2); 
grid on; 
title('Hassan - 1421553043')
legend('ASK Wave'); 
ylim([-1.2 1.2]);