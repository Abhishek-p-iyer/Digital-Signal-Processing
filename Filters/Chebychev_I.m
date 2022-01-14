Fp=3500;%Pass band frequencies
Fs=4500;%Stop band edge frequencies
Wp=2*pi*Fp;
Ws=2*pi*Fs;
[N,wn]=cheb1ord(Wp,Ws,0.5,30,'s');
[b,a]=cheby1(N,30,wn,'s');
wa=0:(3*Ws)/511:3*Ws;
h=freqs(b,a,wa);
subplot(2,2,1);
plot(wa/(2*pi),20*log10(abs(h)));
grid
xlabel('Freq...>');
ylabel('gain...>');
title('LOW PASS FILTER -Gain response');
axis([0 3*Fs -60 5]);

%High pass filter
Fp=3500;
Fs=4500;
Wp=2*pi*Fp;
Ws=2*pi*Fs;
[N,wn]=cheb1ord(Wp,Ws,0.5,30,'s');
[b,a]=cheby1(N,30,wn,'high','s');
wa=0:(3*Ws)/511:3*Ws;
h=freqs(b,a,wa);
subplot(2,2,2);
plot(wa/(2*pi),20*log10(abs(h)));
grid
xlabel('Freq...>');
ylabel('gain...>');
title('HIGH PASS FILTER -Gain response');
axis([0 3*Fs -100 5]);

%Band pass filter
Fp=3000;
Fs=6000;
Wp=2*pi*Fp;
Ws=2*pi*Fs;
[N]=cheb1ord(Wp,Ws,0.5,30,'s');
[wn]=[Wp,Ws];
[b,a]=cheby1(N,30,wn,'s');
wa=0:(3*Ws)/511:3*Ws;
h=freqs(b,a,wa);
subplot(2,2,3);
plot(wa/(2*pi),20*log10(abs(h)));
grid
xlabel('Freq...>');
ylabel('gain...>');
title('BAND PASS FILTER -Gain response');
axis([0 3*Fs -100 5]);

%Band Stop Filter
Fp=3000;
Fs=6000;
Wp=2*pi*Fp;
Ws=2*pi*Fs;
[N]=cheb1ord(Wp,Ws,0.5,30,'s');
[wn]=[Wp,Ws];
[b,a]=cheby1(N,30,wn,'stop','s');
wa=0:(3*Ws)/511:3*Ws;
h=freqs(b,a,wa);
subplot(2,2,4);
%figure;
plot(wa/(2*pi),20*log10(abs(h)));
grid
xlabel('Freq...>');
ylabel('gain...>');
title('BAND Stop FILTER -Gain response');
axis([0 3*Fs -200 5]);
