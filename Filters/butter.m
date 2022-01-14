%Analyse the different orders and cutoff frequencies on the signal 

ecg = load('ecg_hfn.dat');
Fs = 1000;
slen = length(ecg);
t=[1:slen]/Fs;

figure, subplot(3,2,1);
plot(ecg)
axis tight;
xlabel('Time in seconds');
ylabel('ECG');
title('Noisy ECG Signal');


%ORDER 2 AND CUTOFF FREQUENCY 10Hz
n1 = 2;
wc1 = 10;
[b1,a1] = butter(n1,wc1/(Fs/2));
signal_1 = filter(b1,a1,ecg);

subplot(3,2,2);
plot(signal_1)
grid
xlabel('time');
ylabel('ECG');
title('ORDER =2, CUTOFF FREQUENCY = 10Hz');
hold on
plot(ecg)

%ORDER 8 AND CUTOFF FREQUENCY 20Hz
n2 = 8;
wc2 = 20;
[b2,a3] = butter(n2,wc2/(Fs/2));
signal_2 = filter(b2,a3,ecg);


subplot(3,2,3);
plot(signal_2)
grid
xlabel('Time')
ylabel('ECG')
title('ORDER = 8 AND CUTOFF FREQUENCY = 20Hz');
hold on;
plot(ecg);

%ORDER 8 AND CUTOFF FREQ 40Hz
wc3 = 40;
[b3,a3] = butter(n2,wc3/(Fs/2));
signal_3 = filter(b3,a3,ecg);
subplot(3,2,4);
plot(signal_3)
grid
xlabel('Time')
ylabel('ECG')
title('ORDER = 8 AND CUTOFF FREQUENCY = 40Hz');
hold on;
plot(ecg);



%ORDER 8 AND CUTOFF FREQ 70Hz
wc4 = 70;
[b4,a4] = butter(n2,wc4/(Fs/2));
signal_4 = filter(b4,a4,ecg);
subplot(3,2,5);
plot(signal_4)
grid
xlabel('Time')
ylabel('ECG')
title('ORDER = 8 AND CUTOFF FREQUENCY = 70Hz');
hold on;
plot(ecg);
