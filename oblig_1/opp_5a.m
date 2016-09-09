[time, freq, val, phase, step, head] = import_signal_lts('5a.txt');

head
figure(5)
subplot(3, 1, 1);
plot(time, val{1}, 'r')
xlabel('Time, s');
ylabel('Amplitude');
title('WH1');
grid on;

subplot(3, 1, 2);
plot(time, val{3}, 'g'), 
xlabel('Time, s');
ylabel('Amplitude');
title('WH2');
grid on;

subplot(3, 1, 3);
plot(time, val{2});
%legend('WH1', 'WH2', 'WH1-WH2');
xlabel('Time, s');
ylabel('Amplitude');
title('WH1 - WH2');
grid on;