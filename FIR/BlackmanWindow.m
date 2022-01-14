clc
clear all 
close all 
rp = input('Enter the passband ripple');
rs = input('Enter the stopband ripple');
fp = input('Enter the passband freq ');
fs = input('Enter the stopband freq ');
f = input('Enter the sampling freq ');

wp = 2*fp/f;
ws = 2*fs/f;
num = -20*log10(sqrt(rp*rs))-13;
dem = 14.6*(fs-fp)/f;
n = ceil(num/dem);
n1 = n+1;
if (rem(n,2)~=0)
    n1=n;
    n=n-1;
end
y = blackman(n1);

%LOW PASS FILTER
b = fir1(n,wp,y);
[h,o] = freqz(b,1,256);
m = 20*log10(abs(h));
subplot(2,2,1);
plot(o/pi,m);
ylabel('Gain in dB --->');
xlabel('(a) Normalised frequency ---->');

%HIGH PASS FILTER
b = fir1(n,wp,'high',y);
[h,o] = freqz(b,1,256);
m = 20*log10(abs(h));
subplot(2,2,2);
plot(o/pi,m);
ylabel('Gain in dB');
xlabel('(b) Normalised frequency ---->');

%BANDPASS FILTER 
wn = [wp,ws];
b=fir1(n,wn,y);
[h,o] = freqz(b,1,256);
m = 20*log10(abs(h));
subplot(2,2,3);
plot(o/pi,m);
ylabel('Gain in dB ---->');
xlabel('(c) Normailised frequency ---->');

%BAND STOP FILTER
b = fir1(n,wn,'stop',y);
[h,o] = freqz(b,1,256);
m = 20*log10(abs(h));
subplot(2,2,4);
plot(o/pi,m);
ylabel('Gain in dB---->');
xlabel('(d) Normalised freq --->');
