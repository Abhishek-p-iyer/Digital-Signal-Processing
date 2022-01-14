%Computing the FFT of x and displaying the amplitude spectrum 
n = (-100:100)'; 
fs = 200;
syms w; 
x = sin(40*pi.*n/fs)+cos((100*pi.*n/fs)+2*pi/3)+sin((1000*pi.*n/fs)+4*pi/5);

subplot(211); 
stem(n,x);
grid on;
title('x(n) plot');
xlabel ('time in sec');
ylabel ('Amplitude');

y = fft(x);
N=length(y);
k=0:N-1;

subplot(212);
stem(k,abs(y)); 
grid on;
title('X(w) plot');
xlabel ('Frequency');
ylabel ('Amplitude');
