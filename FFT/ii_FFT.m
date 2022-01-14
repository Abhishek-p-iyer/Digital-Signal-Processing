load handel.mat

filename = 'handel.wav';
audiowrite(filename,y,Fs);
clear y Fs
[y,Fs] = audioread('handel.wav');

subplot(311); 
plot(y); 
xlabel('Sample Number'); 
ylabel('Amplitude'); 
title('Sample signal'); 

moan = y(2.45e4:3.10e4); 
t = 10*(0:1/Fs:(length(moan)-1)/Fs); 

subplot(312); 
plot(t,moan) 
xlabel('Time (seconds)'); 
ylabel('Amplitude'); 
title('Single Moan'); 

xlim([0 t(end)]); 
m = length(moan);       
n = pow2(nextpow2(m));  
z = fft(moan,n);        
f = (0:n-1)*(Fs/n)/10; 
power = abs(y).^2/n;   

subplot(313); 
plot(f(1:floor(n/2)),power(1:floor(n/2))); 
xlabel('Frequency'); 
ylabel('Power'); 
title('Power Spectrum'); 
