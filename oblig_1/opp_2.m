%% CASE 2
% the file contains fft or AC analysis with no steps and only a single
% measurment the output are magnitude (val) and phase as vectors

[time, freq, val, phase, step, head] = import_signal_lts('2_one_tenth_FFT.txt');
[time2, freq2, val2, phase2, step2, head2] = import_signal_lts('2_one_hund_FFT.txt');
head 
figure(1)
semilogx(freq, val, freq2, val2);
xlim([0 10^5]);
grid on;
legend('Time step:0.1ms', 'Time step:0.01ms');
title('FFT over different time step');
xlabel('Frequency');
ylabel('Magnitude(dB)');

%%
figure(2);
clear all;
[time, freq, val, phase, step, head] = import_signal_lts('2_hund_tran.txt');
head 
figure(1)
plot(time, val);
grid on;
xlim([0 3*10^-3]);
ylim([-1.1, 1.1]);
title('Triansient sine wave');
xlabel('Time');
ylabel('Magnitude');
%yyaxis right
%semilogx(freq, phase)
clear all;