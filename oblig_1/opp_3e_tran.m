clear all;
[time, freq, val, phase, step, head] = import_signal_lts('3_tran_agian.txt');
[time1, freq1, val1, phase1, step1, head1] = import_signal_lts('3f_tran_agian.txt');

%head 
figure(1)
subplot(2, 1, 2);
plot(time, val{1}, time1, val1{1});
xlabel('Time, s');
ylabel('Noise, V');
xlim([0.998*10^-5 1.003*10^-5]);
ylim([-0.1, 0.05])
title('Output voltage as Noise');

grid on;
subplot(2, 1, 1);
plot(time, val{2}, time1, val1{2});
ylabel('Current, A');
xlabel('Time, s');
xlim([0.998*10^-5 1.003*10^-5]);
ylim([-0.1, 1.1])
grid on;
title('Current spikes at input');
legend('Tr = Tf = 5n', 'Tr = Tf = 1n')