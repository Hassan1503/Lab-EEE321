%% message signal
t = 0:0.001:3;
msg = sin(2*pi*3*t);%% sampling
partition = -1: 0.1: 1; % A quantization partition
codebook = -1: 0.1: 1.1; % A codebook value
[index, sample_msg] = quantiz(msg,partition,codebook);%% quantization
n = input('Enter the Bit Depth of PCM Coding: ');
q_msg = uencode(sample_msg, n);%% plotting
subplot(3,1,1)
plot(t,msg); grid on
title('Message Signal')
subplot(3,1,2)
plot(t,sample_msg,'r'); grid on
title('Sampled Signal')
subplot(3,1,3)
plot(t,q_msg,'linewidth',3); grid on
title( ['Quantized Signal for Bit Depth = ', num2str(n)] )