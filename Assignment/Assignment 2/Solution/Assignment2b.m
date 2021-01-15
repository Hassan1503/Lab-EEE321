clc; close all; clear all; 
%Code for PCM
%% message signal 
t = 0:0.001:3; 
fm=3
msg = 2*sin(2*pi*fm*t); 
%% sampling 
partition = -2:0.2:1.8;    % A quantization partition  
codebook = -2:0.2:2;           % A codebook value  
[index, sample_msg] = quantiz(msg,partition,codebook)  
 
%% quantization 
n = 4;
q_msg = uencode(sample_msg, n);  
%% encoding
bin_msg = dec2bin(q_msg, n);  
%% plotting 
subplot(3,1,1) 
plot(t,msg); 
grid on
title('Hassan - 1421553043')
legend('Message Signal')  
subplot(3,1,2)
plot(t,sample_msg,'r');
grid on 
title('Hassan - 1421553043')
legend('Sampled Signal')  
subplot(3,1,3)
plot(t,q_msg,'g');
grid on 
title('Hassan - 1421553043')
legend( ['Quantized Signal for Bit Depth = ', num2str(n)] ) 