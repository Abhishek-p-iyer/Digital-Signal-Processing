%Compute the frequency samples of the DTFT
w = -4*pi: 8*pi/511:4*pi;
num = [2 1]; den = [1 -0.6];
h = freqz (num, den, w);
% Plot the DTFT
subplot (2,1,1)
plot (w/pi, real (h), 'LineWidth',1.2);grid
title('Real part of H(e*{j\omega})')
xlabel('\omega /\pi');
ylabel ('Amplitude');
subplot (2,1,2)
plot (w/pi, imag (h), 'LineWidth',1.2);grid
title('Imaginary part of H(^{j\omega})')
xlabel ('\omega /\pi');
ylabel ('Amplitude');
figure(2)
subplot (2,1,1)
plot (w/pi, abs (h), 'LineWidth',1.2);grid
title ('Magnitude Spectrum H (e^{j\omega}) |')
xlabel ('\omega /\pi');
ylabel ('Amplitude');
subplot (2,1,2)
plot (w/pi, angle (h), 'LineWidth',1.2);grid
title('Phase Spectrum arg[H(e^{j\omega})]')
xlabel ('\omega /\pi');
ylabel ('Phase in radians');
