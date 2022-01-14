N=200;
L=256;
nn=[0:N-1];
kk=[0:L-1];

 

xR=[0.1*(1:100) zeros(1, N-100)];
xI=zeros(1, N);
x=xR+i*xI;

 

XF=fft(x, L);

 

subplot(3, 2, 1); grid;
plot(nn, xR);grid;
title('Re\{x[n]\}');
xlabel('Time index n');
ylabel('Amplitude');

 

subplot(3, 2, 2); grid;
plot(nn, xI);grid;
title('Im\{x[n]\}');
xlabel('Time index n');
ylabel('Amplitude');

 

subplot(3, 2, 3); grid;
plot(kk, real(XF));grid;
title('Re\{X[k]\}');
xlabel('Frequency index k');
ylabel('Amplitude');

 

subplot(3, 2, 4); grid;
plot(kk, imag(XF));grid;
title('Im\{X[k]\}');
xlabel('Frequency index k');
ylabel('Amplitude');

 

%IDFT
xx=ifft(XF, L);

 

subplot(3, 2, 5);
plot(kk, real(xx)); grid;
title('Real part of IDFT\{X[k]\}');
xlabel('Time index n');
ylabel('Amplitude');

 

subplot(3, 2, 6);
plot(kk, imag(xx)); grid;
title('Imaginary part of IDFT\{X[k]\}');
xlabel('Time index n');
ylabel('Amplitude');