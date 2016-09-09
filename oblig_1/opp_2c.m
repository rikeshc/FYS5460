%%fft
[time, freq, val, phase, step, head] = import_signal_lts('2c_FFT.txt');
head
figure(3)
semilogx(freq, val{1}, freq, val{2});
xlim([0 10^5]);
grid on;
legend('Input, A', 'Output, B');
title('FFT: Input and Output');

%time
[time, freq, val, phase, step, head] = import_signal_lts('2c_tran.txt');

head
figure(4)
plot(time, val{1}, time, val{2})
grid on;
xlim([0 3*10^-3]);
ylim([-0.1, 1.1]);
legend('Input, A', 'Output, B');
title('Transient: Input and Output');