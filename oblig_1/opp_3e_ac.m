[time, freq, val, phase, step, head] = import_signal_lts('3_ac_again.txt');
[time1, freq1, val1, phase1, step1, head1] = import_signal_lts('3f_ac.txt');

%head 
figure(1)
yyaxis left
semilogx(freq, val, freq1, val1); 
%semilogx( freq1, val1+1);
xlabel('Frequency');
ylabel('Magnitude, dB');
ylim([-60, -18])
yyaxis right
semilogx(freq, phase, freq1, phase1);
ylabel('Phase, deg');
xlim([0 10^9]);
%ylim([100, 260])
grid on;
title('Decoupling-AC simulation');
legend('Tr = Tf = 5n', 'Tr = Tf = 1n')