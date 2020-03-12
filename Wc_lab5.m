% MatLab Program to plot Average BER of Rayleigh Fading Channel
clc; clear all; close all;
SNR = 0:0.1:100;

   
f = 1 - sqrt((SNR./(2+SNR)));
 
plot(SNR,f)
hold on 
xlabel('SNR'); 
ylabel('Average BER'); 
title('Average BER of Rayleigh Fading Channel')
grid on 