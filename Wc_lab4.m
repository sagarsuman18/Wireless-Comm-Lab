% MatLab Program to plot Probability of Bit Error for BPSK modulated transmitter.


clc; clear all; close all;
SNR = 0:0.1:20;
f = 0.5.*exp(-(SNR/2));
plot(SNR,f)
hold on 

xlabel('SNR'); 
ylabel('Pe'); 
title('Pe for BPSK modulated transmitter')
grid on 