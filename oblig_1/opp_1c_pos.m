%% different AC simulations
[time, freq, val, phase, step, head] = import_signal_lts('1c_pos.txt');

figure(4)
semilogx(freq{1}, val{1}, freq{2}, val{2}, freq{3}, val{3}, freq{4}, val{4}, freq{5}, val{5}, freq{6}, val{6}, freq{7}, val{7}, freq{8}, val{8}, freq{9}, val{9}, freq{10}, val{10}, freq{11}, val{11})
legend('Voffset = 14.99 V', 'Voffset = 14.991 V', 'Voffset = 14.992 V', 'Voffset = 14.993 V', 'Voffset = 14.994 V', 'Voffset = 14.995 V', 'Voffset = 14.996 V', 'Voffset = 14.997 V','Voffset = 14.998 V', 'Voffset = 14.999 V', 'Voffset = 15 V')
xlabel('Frequency');
ylabel('Magnitude(dB)');
ylim([14 15]);
xlim([0 10^6]);
grid on;
title('AC for +ve varying Voff');
%semilogx(freq{3}, val{3})
%semilogx(freq{4}, val{4})