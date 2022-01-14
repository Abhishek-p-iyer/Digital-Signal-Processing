clc 
clear all 
close all
t=0:1:1000;
w1=[zeros(1,401),ones(1,200),zeros(1,400)];
w2=[zeros(1,201),ones(1,600),zeros(1,200)];
w3=[zeros(1,101),ones(1,800),zeros(1,100)];
A= xcorr(w1,w1);
B= xcorr(w2,w2);
C= xcorr(w3,w3);

figure, subplot(2,2,1);
plot(t,w1), grid on;
hold on 
plot(t,w2), grid on;
hold on
plot(t,w3,'g'), grid on;
title('w1,w2,w3');

subplot(2,2,2);
plot(A), grid on; 
title('auto-correlation of w2');
xlabel('t');
ylabel('amp');

subplot(2,2,3);
plot(B), grid on;
title('auto-correlation of w2');
xlabel('t');
ylabel('amp');


subplot(2,2,4);
plot(C), grid on;
title('auto-correlation of w3');
xlabel('t');
ylabel('amp');
