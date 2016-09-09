%% different AC simulations
[time, freq, val, phase, step, head] = import_signal_lts('1d.txt');

figure(4)
yyaxis left
semilogx(freq{1}, val{1}, freq{2}, val{2}, freq{3}, val{3});
legend('Cload = 10p', 'Cload = 20p', 'Cload = 30p');
xlabel('Frequency');
ylabel('Magnitude(dB)');
ylim([-7 22]);
xlim([10^4 10^6]);
yyaxis right
semilogx(freq{1}, phase{1}, freq{2}, phase{2}, freq{3}, phase{3})
ylabel('Phase');
grid on;
title('AC analysis with different load capacitance');
%semilogx(freq{3}, val{3})
%semilogx(freq{4}, val{4})