%To write a MatLab Program for plotting 
%Probability Distribution Function of a Random Gaussian Variable.
clc; clear all; close all;
m = 0;
sig = [0.25 0.5 1];
x = -10:0.1:10;
colors=['r','g','b'] ;
f=zeros(1,length(x));
for w = 1:length(sig)
for i = 1:length(x)
f(i) = 1/(sig(w)*sqrt(2*pi)) .* exp(-((x(i)-m)^2 / (2*(sig(w))^2)));
 
end
plot(x,f,colors(w))
hold on
end
xlabel('x'); 
ylabel('PDF'); 
title('Probability Density Function')
hleg1 = legend('sigma=0.25','sigma=0.5','sigma=1');
set(hleg1,'Location','NorthEast')
axis([-10 10 0 4]);
grid on 
