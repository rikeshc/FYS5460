%%different offsets
clear all;
[time, freq, val, phase, step, head] = import_signal_lts('1a_dc_off_neg_plus.txt');

head
step
figure(7)
%step1
plot(time{1}, val{1,1}, time{1}, val{1,2}, time{2}, val{2,2}, time{3}, val{3,2}, time{4}, val{4,2}, time{5}, val{5,2}, time{6}, val{6,2}, time{7}, val{7,2}); % time{8}, val{8,2}, time{9}, val{9,2}); 
legend('Vin', 'Vout @offset = 0', 'Vout @offset = 50mV',  'Vout @offset = 100mV',  'Vout @offset = 150mV',  'Vout @offset = 200mV,',  'Vout @offset = 250mV',  'Vout @offset = 300mV' )
title('Positive offset at -ve terminal');
xlabel('Time(s)');
ylabel('Magnitude(V)')
 xlim([0 3*10^-3]);
grid on;