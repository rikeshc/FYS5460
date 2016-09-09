function [time, freq, values, phase, steps, head] = import_signal_lts(file)

fileID = fopen(file,'r');

% Check file existance
if fileID == -1
    display('File does not exist')
    time = [];
    freq = [];
    values = [];
    phase = [];
    steps = [];
    return
end

% header 
first = fgetl(fileID);
head = strsplit(first);
ncol = length(head);

% time or frequency?
if strcmp(head{1},'Freq.')
    FREQ = 1;
else
    FREQ = 0;
end

% cycle on different steps
first = fgetl(fileID);

while first ~= -1
    
    first_line = strsplit(first);
    
    % check if there are multiple simulations
    if strcmp(first_line{1},'Step')
        STEP = 1;
        sim_form = '%d/%d)';
        sims = sscanf(first_line{5}, sim_form);
        curr_run = sims(1);
        runs = sims(2);
        
        if curr_run == 1
            steps = cell(1,runs);
        end
        
        steps{curr_run} = first_line{3};
    else
        % format first line
        if FREQ == 0
            format = repmat('%f', 1, ncol);
            firstval = sscanf(first, format);
        else
            firstval = strsplit(first);
        end
        curr_run = 1;
        runs = 1;
        steps = '';
        STEP = 0;
    end
    
    % Parse time - value 
    if FREQ == 0
        format = repmat('%f', 1, ncol);
        data = textscan(fileID, format, 'delimiter', '\t');
        
        if curr_run == 1
            time = cell(runs, 1);
            values = cell(runs, ncol-1);
            freq = [];
            phase = [];
        end
        
        
        if STEP == 0
            % concatenate first line at head of data
            time{curr_run} = [firstval(1); data{1}];
            
            for ii = 2:ncol
                values{curr_run, ii-1} = [firstval(ii); data{ii}];
            end
        else
            time{curr_run} = data{1};
            
            for ii = 2:ncol
                values{curr_run, ii-1} = data{ii};
            end
        end
    
    % Parse frequency - (magnitude,phase)
    else
        
        mag_phase_form = '(%fdB,%f°)';
        format = ['%f\t' repmat('%s\t',1,ncol-1) ];
        data = textscan(fileID, format,'delimiter', '\t');
        
        if curr_run == 1
            time = [];
            values = cell(runs, ncol-1);
            freq = cell(runs, 1);
            phase = cell(runs, ncol-1);
        end
        
        
        if STEP == 0
            % concatenate first line at head of data
            freq{curr_run} = [str2num(firstval{1}); data{1}]; %#ok<ST2NM>
            mag = zeros(1,length(freq{curr_run}));
            ph = zeros(1,length(freq{curr_run}));
            
            for ii = 2:ncol
                for jj = 1:length(freq{curr_run})
                    if jj == 1
                        A = sscanf(firstval{ii}, mag_phase_form);
                        mag(jj) = A(1);
                        ph(jj) = A(2);                        
                    else
                        A = sscanf(data{ii}{jj-1},mag_phase_form);
                        mag(jj) = A(1);
                        ph(jj) = A(2);
                    end
                end
                values{curr_run, ii-1} = mag;
                phase{curr_run, ii-1} = ph;
            end
            
        else
            
            freq{curr_run} = data{1};
            mag = zeros(1,length(freq{curr_run}));
            ph = zeros(1,length(freq{curr_run}));
            
            for ii = 2:ncol
                for jj = 1:length(freq{curr_run})
                    A = sscanf(data{ii}{jj}, mag_phase_form);
                    mag(jj) = A(1);
                    ph(jj) = A(2);
                end
                values{curr_run, ii-1} = mag;
                phase{curr_run, ii-1} = ph;
            end
        end
        
    end
    
    % get next line
    first = fgetl(fileID);
    
end

% if size is 1 return vector instead of cell
if length(time) == 1
    time = time{1};
end
if length(freq) == 1
    freq = freq{1};
end
if length(values) == 1
    values = values{1};
end
if length(phase) == 1
    phase = phase{1};
end




fclose(fileID);


end