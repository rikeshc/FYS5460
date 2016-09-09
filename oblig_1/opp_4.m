[time, freq, val, phase, step, head] = import_signal_lts('4a.txt');
[time2, freq2, val2, phase2, step2, head2] = import_signal_lts('4b_2cm.txt');
[time3, freq3, val3, phase3, step3, head3] = import_signal_lts('4b_5cm.txt');
[time4, freq4, val4, phase4, step4, head4] = import_signal_lts('4b_9cm.txt');
[time5, freq5, val5, phase5, step5, head5] = import_signal_lts('4b_99cm.txt');

head 
figure(2);
semilogx(freq, val, freq2, val2, freq3, val3, freq4, val4, freq5, val5);
grid on;
xlim([0, 10^6]);
ylim([-125, -20]);
legend('No shield', 'Shield @2 cm','Shield @5 cm','Shield @9 cm','Shield @9.9 cm' );
title('Capacitive coupling and shielding');
xlabel('Frequency');
ylabel('Magnitude, dB');