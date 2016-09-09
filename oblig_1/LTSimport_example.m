%% Example: how to load and plot signals imported from LTSpice %%


%% CASE 1
% the file contains time series with no steps and only a single
% measurment the output are time and values as vectors

[time, freq, val, phase, step, head] = import_signal_lts('case1.txt');

head 
figure(1)
plot(time, val)


%% CASE 2
% the file contains fft or AC analysis with no steps and only a single
% measurment the output are magnitude (val) and phase as vectors

[time, freq, val, phase, step, head] = import_signal_lts('3_ac.txt');

%head 
figure(2)
semilogx(freq, val)
yyaxis right
semilogx(freq, phase)

%% CASE 3
% the file contains step parameters: the output is organized in cells

% different time steps..
[time, freq, val, phase, step, head] = import_signal_lts('5a.txt');

step
figure(3)
plot(time{1}, val{1})
hold on
plot(time{2}, val{2})
plot(time{3}, val{3})
legend(step)

%% different AC simulations
[time, freq, val, phase, step, head] = import_signal_lts('1c_pos.txt');

figure(4)
semilogx(freq{1}, val{1})
hold on
semilogx(freq{2}, val{2})
semilogx(freq{3}, val{3})
semilogx(freq{4}, val{4})

%% CASE 4
% the file contains multiple measurments (e.g. V(001) and V(002)
% the output values (not time or freq.) is organized in cells

%%time
[time, freq, val, phase, step, head] = import_signal_lts('3_tran.txt');

head
figure(5)
plot(time, val{1}, time, val{2})


%%fft
[time, freq, val, phase, step, head] = import_signal_lts('2c_FFT.txt');

head
figure(6)
semilogx(freq, val{1}, freq, val{2})

%% CASE 5
% the file contains multiple measurments (e.g. V(001) and V(002) and
% multiple steps
% the output is organized in cells (both time/freq and values)

%time
[time, freq, val, phase, step, head] = import_signal_lts('1a_dc_off_neg_minus.txt');

head
step
figure(1)
%step1
plot(time{1}, val{1,1}, time{1}, val{1,2})
hold on
%step2
plot(time{2}, val{2,1}, time{2}, val{2,2})
%step3
plot(time{3}, val{3,1}, time{3}, val{3,2})


