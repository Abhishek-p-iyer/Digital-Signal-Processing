%LOW PASS FILTER
Fp = 3500;
Fs = 4500;
Wp = 2*pi*Fp;
Ws = 2*pi*Fs;
[N,wn] = buttord(Wp,Ws,0.5,30,'s');
[b,a] = butter(N,wn,'s');
wa = 0:(3*Ws)/511:3*Ws;
h = freqs(b,a,wa);
subplot(2,2,1);
plot(wa/(2*pi),20*log10(abs(h))); grid on
xlabel('Freq.....>')
ylabel('gain....>');
title('LOW PASS FILTER - Gain response');
axis([0 3*Fs -60 5]);


%HIGH PASS FILTER 
Fp = 3500; 
Fs = 4500;
Wp = 2*pi*Fp;
Ws = 2*pi*Fs;
[N,wn] = buttord(Wp,Ws,0.5,30,'s');
[b,a] = butter(N,wn,'high','s');
wa = 0:(3*Ws)/511:3*Ws;
h = freqs(b,a,wa);
subplot(2,2,2);
plot(wa/(2*pi),20*log10(abs(h))); grid on 
xlabel('Freq....>');
ylabel('gain....>');
title('HIGH PASS FILTER = Gain response');
axis([0 3*Fs -60 5]);

%Band pass filter
Fp = 3000;
Fs = 6000;
Wp = 2*pi*Fp;
Ws = 2*pi*Fs;
[N] = buttord(Wp,Ws,0.5,30,'s');
[wn] = [Wp,Ws];
[b,a] = butter(N,wn,'s');
wa = 0:(3*Ws)/511:3*Ws;
h = freqs(b,a,wa);
subplot(2,2,3);
plot(wa/(2*pi),20*log10(abs(h))); grid on 
xlabel('Freq....>');
ylabel('Gain....>');
title('BAND PASS FILTER - Gain response');
axis([0 3*Fs -60 5]);


%Band Stop Filter 
Fp = 3000;
Fs = 6000;
Wp = 2*pi*Fp;
Ws = 2*pi*Fs;
[N] = buttord(Wp,Ws,0.5,30,'s');
[wn]=[Wp,Ws];
[b,a]=butter(N,wn,'stop','s');
wa = 0:(3*Ws)/511:3*Ws;
h = freqs(b,a,wa);
subplot(2,2,4);
plot(wa/(2*pi),20*log10(abs(h))); grid on 
xlabel('Freq....>');
ylabel('Gain.....>');
axis([0 3*Fs -60 5]);
