% MATLAB Spectral Visualization Script for DNORA/SWAN output files
% Generates high-resolution 2D spectral plots of significant wave heights and directions
close all;
clear all;
clc;

% Prompt user to select the .mat file
[file, path] = uigetfile('.mat', 'Select the DNORA/SWAN output file');
if isequal(file,0)
    error('No file selected. Script terminated.');
end

% Load the selected file
Data = load(fullfile(path, file));



% --- Detect available Hsig fields ---
hsigFields = fieldnames(Data);
hsigFields = hsigFields(startsWith(hsigFields, 'Hsig_'));

if isempty(hsigFields)
    error('No Hsig fields found in the MAT file.');
end

% Let the user select which snapshot to plot
[idx, tf] = listdlg('PromptString', 'Select Hsig field (snapshot):', ...
    'ListString', hsigFields, 'SelectionMode', 'single');
if ~tf, error('No snapshot selected.'); end

HsigField = hsigFields{idx};
H = Data.(HsigField);

% Match the corresponding Dir field
timeTag = extractAfter(HsigField, 'Hsig_');
DirField = ['Dir_' timeTag];
if ~isfield(Data, DirField)
    error('No matching Dir field found for %s', HsigField);
end
D = Data.(DirField);

% Decompose directions
Dirx = -sind(D);
Diry = -cosd(D);

% Sampling intervals
interval_full = 1;   % 100% arrows
interval_sub  = 10;  % 1% arrows

% Coordinates
X = Data.Xp;
Y = Data.Yp;

%% ===== PLOT 100% ARROWS =====
figure;
pcolor(X, Y, H); shading flat; colormap(turbo); colorbar;
hold on;
q = quiver(X(1:interval_full:end,1:interval_full:end), ...
           Y(1:interval_full:end,1:interval_full:end), ...
           Dirx(1:interval_full:end,1:interval_full:end), ...
           Diry(1:interval_full:end,1:interval_full:end), 'k');
hold off;
title({sprintf('DNORA/SWAN Simulation: %s', HsigField), ...
       'Significant Wave Height [m] with 100% arrows'}, ...
       'Interpreter','none');
xlabel('Longitude'); ylabel('Latitude');
axis equal tight;

%% ===== PLOT 1% ARROWS (Fig.6) =====
figure;
pcolor(X, Y, H); shading flat; colormap(turbo(16)); colorbar;
hold on;
q = quiver(X(1:interval_sub:end,1:interval_sub:end), ...
           Y(1:interval_sub:end,1:interval_sub:end), ...
           Dirx(1:interval_sub:end,1:interval_sub:end), ...
           Diry(1:interval_sub:end,1:interval_sub:end), 'k');
hold off;
title({sprintf('DNORA/SWAN Simulation: %s', HsigField), ...
       'Significant Wave Height [m] with 1% arrows (Fig.6)'}, ...
       'Interpreter','none');
xlabel('Longitude'); ylabel('Latitude');
axis equal tight;
