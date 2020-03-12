%To write a MatLab Program for plotting 
%Cumulative Distribution Function of Rayleigh Distribution.
clc; clear all; close all;
m = 0;
sig = [0.5 1 2 3];
x = 0:0.1:10;
f=zeros(1,length(x));
for w = 1:length(sig)
for i = 1:length(x)
   
f(i) = 1 - exp(-(x(i)^2/(2*(sig(w))^2)));
 
end
plot(x,f)
hold on 
end
xlabel('x'); 
ylabel('Fx(x)'); 
title('Rayleigh Distribution Function')
axis([0 20 0 1]);
grid on 