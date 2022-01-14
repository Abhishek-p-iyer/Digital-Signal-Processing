ecg = load('ecg_lfn.dat.txt');
fs = 1000; %sampling rate = 1000 Hz
slen = length(ecg);
t=[1:slen]/fs;
figure, subplot(4,2,1);
plot(t, ecg)
axis tight;
title('Noisy ECG signal');
xlabel('Time in seconds');
ylabel('ECG');

%order = 2 cutoff freq = 0.5 
N1 = 2;
Fc1 = 0.5;
[b1,a1] = butter(N1,Fc1/(fs/2),'high');
filterEcg = filter(b1,a1,ecg);
subplot(4,2,2);
plot(t,filterEcg);
title('ORDER - 2 CUTOFF FREQ - 0.5')

%order = 2 cutoff freq = 1
Fc2 = 1;
[b2,a2] = butter(N1,Fc2/(fs/2),'high');
filterEcg = filter(b2,a2,ecg);
subplot(4,2,3);
plot(t,filterEcg);
title('ORDER - 2 CUTOFF FREQ - 1')


%order = 2 cutoff freq = 2
Fc3 = 2;
[b3,a3] = butter(N1,Fc3/(fs/2),'high');
filterEcg = filter(b3,a3,ecg);
subplot(4,2,4);
plot(t,filterEcg);
title('ORDER - 2 CUTOFF FREQ - 2')

%order = 2 cutoff freq = 2.5 
Fc4 = 2.5;
[b4,a4] = butter(N1,Fc4/(fs/2),'high'); 
filterEcg = filter(b4,a4,ecg);
subplot(4,2,5);
plot(t,filterEcg);
title('ORDER - 2 CUTOFF FREQ - 2.5')

%Order = 2 cutoff freq = 3
Fc5 = 3;
[b5,a5] = butter(N1,Fc5/(fs/2),'high'); 
filterEcg = filter(b5,a5,ecg);
subplot(4,2,6);
plot(t,filterEcg);
title('ORDER - 2 CUTOFF FREQ - 3')

%Order = 2 cutoff freq = 3.5
%Fc6 = 3.5;
%[b6,a6] = butter(N2,Fc6/(fs/2),'high'); 
%filterEcg = filter(b6,a6,ecg);
%subplot(4,2,7);
%plot(t,filterEcg);
%title('ORDER - 2 CUTOFF FREQ - 3.5')

%Order = 2 cutoff freq = 4
Fc7 = 4;
[b7,a7] = butter(N1,Fc7/(fs/2),'high'); 
filterEcg = filter(b7,a7,ecg);
subplot(4,2,7);
plot(t,filterEcg);
title('ORDER - 2 CUTOFF FREQ - 4')

%Order = 2 cutoff freq = 5 
Fc8=5;
[b8,a8]= butter(N1,Fc8/(fs/2),'high'); 
filterEcg = filter(b8,a8,ecg);
subplot(4,2,8);
plot(t,filterEcg);
title('ORDER - 2 CUTOFF FREQ - 5')

%Noisy EGC signal 
figure, subplot(4,2,1);
plot(t, ecg)
axis tight;
title('Noisy ECG signal -2');
xlabel('Time in seconds');
ylabel('ECG');


%Order = 3 cutoff freq = 0.5
N2 = 3;
Fc9 = 0.5;
[b9,a9] = butter(N2,Fc9/(fs/2),'high');
filterEcg = filter(b9,a9,ecg);
subplot(4,2,2);
plot(t,filterEcg);
title('ORDER - 3 CUTOFF FREQ - 0.5')

%Order = 3 cutoff freq = 1
Fc10 = 1;
[b10,a10] = butter(N2,Fc10/(fs/2),'high');
filterEcg = filter(b10,a10,ecg);
subplot(4,2,3);
plot(t,filterEcg);
title('ORDER - 3 CUTOFF FREQ - 1')

%Order = 3 cutoff freq = 2
Fc11 = 1;
[b11,a11] = butter(N2,Fc11/(fs/2),'high');
filterEcg = filter(b11,a11,ecg);
subplot(4,2,4);
plot(t,filterEcg);
title('ORDER - 3 CUTOFF FREQ - 2')

%Order = 3 cutoff freq = 2.5
Fc12 = 1;
[b12,a12] = butter(N2,Fc12/(fs/2),'high');
filterEcg = filter(b12,a12,ecg);
subplot(4,2,5);
plot(t,filterEcg);
title('ORDER - 3 CUTOFF FREQ - 2.5')

%Order = 3 cutoff freq = 3
Fc13 = 1;
[b13,a13] = butter(N2,Fc13/(fs/2),'high');
filterEcg = filter(b13,a13,ecg);
subplot(4,2,6);
plot(t,filterEcg);
title('ORDER - 3 CUTOFF FREQ - 3')

%Order = 3 cutoff freq = 4
Fc14 = 1;
[b14,a14] = butter(N2,Fc14/(fs/2),'high');
filterEcg = filter(b14,a14,ecg);
subplot(4,2,7);
plot(t,filterEcg);
title('ORDER - 3 CUTOFF FREQ - 4')

%Order = 3 cutoff freq = 5
Fc15 = 1;
[b15,a15] = butter(N2,Fc15/(fs/2),'high');
filterEcg = filter(b15,a15,ecg);
subplot(4,2,8);
plot(t,filterEcg);
title('ORDER - 3 CUTOFF FREQ - 5')

%Noisy ECG signal for order 4
figure, subplot(4,2,1);
plot(t, ecg)
axis tight;
title('Noisy ECG signal - 3');
xlabel('Time in seconds');
ylabel('ECG');

%Order = 4 cutoff freq = 0.5
N3 = 4; 
Fc16 = 0.5;
[b16,a16] = butter(N3,Fc16/(fs/2),'high');
filterEcg = filter(b16,a16,ecg);
subplot(4,2,2);
plot(t,filterEcg);
title('ORDER - 4 CUTOFF FREQ - 0.5');

%Order = 4 cutoff freq = 1
Fc17= 1;
[b17,a17] = butter(N3,Fc17/(fs/2),'high');
filterEcg = filter(b17,a17,ecg);
subplot(4,2,3);
plot(t,filterEcg);
title('ORDER - 4 CUTOFF FREQ - 1');

%Order = 4 cutoff freq = 2
Fc18 = 2;
[b18,a18] = butter(N3,Fc18/(fs/2),'high');
filterEcg = filter(b18,a18,ecg);
subplot(4,2,4);
plot(t,filterEcg);
title('ORDER - 4 CUTOFF FREQ - 2');

%Order = 4 cutoff freq = 2.5
Fc19 = 2.5;
[b19,a19] = butter(N3,Fc19/(fs/2),'high');
filterEcg = filter(b19,a19,ecg);
subplot(4,2,5);
plot(t,filterEcg);
title('ORDER - 4 CUTOFF FREQ - 2.5');

%Order = 4 cutoff freq = 3
Fc20 = 3;
[b20,a20] = butter(N3,Fc20/(fs/2),'high');
filterEcg = filter(b20,a20,ecg);
subplot(4,2,6);
plot(t,filterEcg);
title('ORDER - 4 CUTOFF FREQ - 3');

%Order = 4 cutoff freq = 4
Fc21 = 4;
[b21,a21] = butter(N3,Fc21/(fs/2),'high');
filterEcg = filter(b21,a21,ecg);
subplot(4,2,7);
plot(t,filterEcg);
title('ORDER - 4 CUTOFF FREQ - 4');

%Order = 4 cutoff freq = 5
Fc22 = 5;
[b22,a22] = butter(N3,Fc22/(fs/2),'high');
filterEcg = filter(b22,a22,ecg);
subplot(4,2,8);
plot(t,filterEcg);
title('ORDER - 4 CUTOFF FREQ - 5');


%Noisy ECG signal for order 5
figure, subplot(4,2,1);
plot(t, ecg)
axis tight;
title('Noisy ECG signal - 4');
xlabel('Time in seconds');
ylabel('ECG');


%Order = 5 cutoff freq = 0.5
N4 = 5;
Fc23 = 0.5;
[b23,a23] = butter(N4,Fc23/(fs/2),'high');
filterEcg = filter(b23,a23,ecg);
subplot(4,2,2);
plot(t,filterEcg);
title('ORDER - 5 CUTOFF FREQ - 0.5');

%Order = 5 cutoff freq = 1
Fc24 = 0.5;
[b24,a24] = butter(N4,Fc24/(fs/2),'high');
filterEcg = filter(b24,a24,ecg);
subplot(4,2,3);
plot(t,filterEcg);
title('ORDER - 5 CUTOFF FREQ - 1');

%Order = 5 cutoff freq = 2
Fc24 = 2;
[b24,a24] = butter(N4,Fc24/(fs/2),'high');
filterEcg = filter(b24,a24,ecg);
subplot(4,2,4);
plot(t,filterEcg);
title('ORDER - 5 CUTOFF FREQ - 2');

%Order = 5 cutoff freq = 2.5
Fc24 = 2.5;
[b24,a24] = butter(N4,Fc24/(fs/2),'high');
filterEcg = filter(b24,a24,ecg);
subplot(4,2,5);
plot(t,filterEcg);
title('ORDER - 5 CUTOFF FREQ - 2.5');

%Order = 5 cutoff freq = 3
Fc24 = 3;
[b24,a24] = butter(N4,Fc24/(fs/2),'high');
filterEcg = filter(b24,a24,ecg);
subplot(4,2,6);
plot(t,filterEcg);
title('ORDER - 5 CUTOFF FREQ - 3');

%Order = 5 cutoff freq = 4
Fc24 = 4;
[b24,a24] = butter(N4,Fc24/(fs/2),'high');
filterEcg = filter(b24,a24,ecg);
subplot(4,2,7);
plot(t,filterEcg);
title('ORDER - 5 CUTOFF FREQ - 4');

%Order = 5 cutoff freq = 5
Fc24 = 5;
[b24,a24] = butter(N4,Fc24/(fs/2),'high');
filterEcg = filter(b24,a24,ecg);
subplot(4,2,8);
plot(t,filterEcg);
title('ORDER - 5 CUTOFF FREQ - 5');

%Noisy ECG signal for order 7
figure, subplot(4,2,1);
plot(t, ecg)
axis tight;
title('Noisy ECG signal - 5');
xlabel('Time in seconds');
ylabel('ECG');

%Order = 7 cutoff freq = 0.5
N4 = 7;
Fc24 = 0.5;
[b24,a24] = butter(N4,Fc24/(fs/2),'high');
filterEcg = filter(b24,a24,ecg);
subplot(4,2,2);
plot(t,filterEcg);
title('ORDER - 7 CUTOFF FREQ - 0.5');

%Order = 7 cutoff freq = 1
N4 = 7;
Fc24 = 1;
[b24,a24] = butter(N4,Fc24/(fs/2),'high');
filterEcg = filter(b24,a24,ecg);
subplot(4,2,3);
plot(t,filterEcg);
title('ORDER - 7 CUTOFF FREQ - 1');

%Order = 7 cutoff freq = 2
N4 = 7;
Fc24 = 2;
[b24,a24] = butter(N4,Fc24/(fs/2),'high');
filterEcg = filter(b24,a24,ecg);
subplot(4,2,4);
plot(t,filterEcg);
title('ORDER - 7 CUTOFF FREQ - 2');

%Order = 7 cutoff freq = 2.5
N4 = 7;
Fc24 = 2.5;
[b24,a24] = butter(N4,Fc24/(fs/2),'high');
filterEcg = filter(b24,a24,ecg);
subplot(4,2,5);
plot(t,filterEcg);
title('ORDER - 7 CUTOFF FREQ - 2.5');

%Order = 7 cutoff freq = 3
N4 = 7;
Fc24 = 3;
[b24,a24] = butter(N4,Fc24/(fs/2),'high');
filterEcg = filter(b24,a24,ecg);
subplot(4,2,6);
plot(t,filterEcg);
title('ORDER - 7 CUTOFF FREQ - 3');

%Order = 7 cutoff freq = 4
N4 = 7;
Fc24 = 4;
[b24,a24] = butter(N4,Fc24/(fs/2),'high');
filterEcg = filter(b24,a24,ecg);
subplot(4,2,7);
plot(t,filterEcg);
title('ORDER - 7 CUTOFF FREQ - 4');

%Order = 7 cutoff freq = 5
Fc24 = 5;
[b24,a24] = butter(N4,Fc24/(fs/2),'high');
filterEcg = filter(b24,a24,ecg);
subplot(4,2,8);
plot(t,filterEcg);
title('ORDER - 7 CUTOFF FREQ - 5');

%Noisy signal for order 8
figure, subplot(4,2,1);
plot(t, ecg)
axis tight;
title('Noisy ECG signal - 6');
xlabel('Time in seconds');
ylabel('ECG');

%Order = 8 cutoff freq = 0.5
N4 = 8;
Fc24 = 0.5;
[b24,a24] = butter(N4,Fc24/(fs/2),'high');
filterEcg = filter(b24,a24,ecg);
subplot(4,2,2);
plot(t,filterEcg);
title('ORDER - 8 CUTOFF FREQ - 0.5');

%Order = 8 cutoff freq = 1
N4= 8;
Fc24 = 1;
[b24,a24] = butter(N4,Fc24/(fs/2),'high');
filterEcg = filter(b24,a24,ecg);
subplot(4,2,3);
plot(t,filterEcg);
title('ORDER - 8 CUTOFF FREQ - 1');

%Order = 8 cutoff freq = 2
N4= 8;
Fc24 = 2;
[b24,a24] = butter(N4,Fc24/(fs/2),'high');
filterEcg = filter(b24,a24,ecg);
subplot(4,2,4);
plot(t,filterEcg);
title('ORDER - 8 CUTOFF FREQ - 2');

%Order = 8 cutoff freq = 2.5
N4= 8;
Fc24 = 2.5;
[b24,a24] = butter(N4,Fc24/(fs/2),'high');
filterEcg = filter(b24,a24,ecg);
subplot(4,2,5);
plot(t,filterEcg);
title('ORDER - 8 CUTOFF FREQ - 2.5');

%Order = 8 cutoff freq = 3
N4= 8;
Fc24 = 3;
[b24,a24] = butter(N4,Fc24/(fs/2),'high');
filterEcg = filter(b24,a24,ecg);
subplot(4,2,6);
plot(t,filterEcg);
title('ORDER - 8 CUTOFF FREQ - 3');

%Order = 8 cutoff freq = 4
N4= 8;
Fc24 = 4;
[b24,a24] = butter(N4,Fc24/(fs/2),'high');
filterEcg = filter(b24,a24,ecg);
subplot(4,2,7);
plot(t,filterEcg);
title('ORDER - 8 CUTOFF FREQ - 4');

%Order = 8 cutoff freq = 5
N4= 8;
Fc24 = 5;
[b24,a24] = butter(N4,Fc24/(fs/2),'high');
filterEcg = filter(b24,a24,ecg);
subplot(4,2,8);
plot(t,filterEcg);
title('ORDER - 8 CUTOFF FREQ - 5');
