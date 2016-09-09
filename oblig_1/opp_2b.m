%% CASE 2
% the file contains fft or AC analysis with no steps and only a single
% measurment the output are magnitude (val) and phase as vectors

[time, freq, val, phase, step, head] = import_signal_lts('2b_half_FFT.txt');
[time2, freq2, val2, phase2, step2, head2] = import_signal_lts('2b_tenth_FFT.txt');
[time3, freq3, val3, phase3, step3, head3] = import_signal_lts('2b_hund_FFT.txt');
head 
figure(2);
%subplot(2,1,2);
semilogx(freq3, val3, freq2, val2, freq, val);
xlim([0 10^5]);
grid on;
legend('Tr = Tf = 0.01*period', 'Tr = Tf = 0.1*period', 'Tr = Tf = 0.5*period');
title('FFT over varying rise and fall time');
%yyaxis right
%semilogx(freq, phase)

%% subplot(2,1,1);
figure(1);
clear all;
[time, freq, val, phase, step, head] = import_signal_lts('2b_tran_trinagle.txt');
[time2, freq2, val2, phase2, step2, head2] = import_signal_lts('2b_tran_ramp.txt');
[time3, freq3, val3, phase3, step3, head3] = import_signal_lts('2b_tran_square.txt');
head 
plot(time3, val3, time2, val2, time, val);
grid on;
xlim([0 3*10^-3]);
ylim([-0.1, 1.1]);
title('Signals with different Tr and Tf');
legend('Tr = Tf = 0.01*period', 'Tr = Tf = 0.1*period', 'Tr = Tf = 0.5*period')
xlabel('Time');
ylabel('Magnitude');
%yyaxis right
%semilogx(freq, phase)
clear all;