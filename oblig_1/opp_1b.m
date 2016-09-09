[time, freq, val, phase, step, head] = import_signal_lts('1b_ac.txt');

head 
figure(2)
yyaxis left
semilogx(freq, val)
%ylabel('Magnitude (dB)');
ylim([-5, 27])
yyaxis right
semilogx(freq, phase)
xlabel('Frequency');
ylabel( 'Phase');
%ylim([5, -90])
grid on;
title('AC simulation');