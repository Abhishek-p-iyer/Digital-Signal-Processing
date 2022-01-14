%Convolution and correlation on a GONG and CHRIP signal 
clc 
clear all 
close all 
load gong;
x=y;
Fs1=Fs;
player=audioplayer(x,Fs1);
play(player)
load chirp;
player=audioplayer(y,Fs2);
play(player)
A=conv(x,y);
B=xcorr(x,y);
figure;
subplot(2,2,1); grid on;
plot(x);
title('GONG SIGNAL');
subplot(2,2,2); grid on;
plot(y);
title('CHRIP SIGNAL');
subplot(2,2,3); grid on;
plot(A);
title('Convoluted signal')
subplot(2,2,4); grid on;
plot(B);
title('correlated signal');
