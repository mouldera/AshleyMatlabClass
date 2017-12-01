function [ maximumIsometricMatrix, averageIsometricMatrix, trial1IsometricTorques, trial2IsometricTorques, trial3IsometricTorques, trial4IsometricTorques, trial5IsometricTorques, trial6IsometricTorques ] = isometricDataFunction( isometricTimeAndTorqueMatrix, isometricTime, isometricTorque )
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here
%Finds the minimums, uses that to seperate the trials and then finds the max, average, and graphs these
%Works only for a Trial Number of 6 currently

%Creates new matrix for data only greater than torque of 15N/m
timeGreater15 = isometricTimeAndTorqueMatrix(isometricTorque>15);
torqueGreater15 = isometricTimeAndTorqueMatrix(isometricTorque>15,2);
Greater15Matrix = [timeGreater15, torqueGreater15];
%Invertes the torque trial, so now maximum becomes minimums and vice versa.
%This is to in order to find the minimum and thus the trial lengths
invertedTorque15 = 1.01*max(torqueGreater15) - torqueGreater15;
%Finds the 'minimum'
[minTorque15, minTime15] = findpeaks(invertedTorque15, timeGreater15 ,'MinPeakProminence',40);

%Initializes minimumLocations
minimumLocations = zeros(6,1);
%creates a new array for the minimumLocations from the locations of the
%minimum times found previously with findpeaks
for i = 1:length(minTime15)
minimumLocations(i) = find(timeGreater15 == minTime15(i));
end

%Uses minimumLocations to seperate the trials into their own vectors
trial1IsometricTorques = torqueGreater15(1: minimumLocations(1));
trial2IsometricTorques = torqueGreater15(minimumLocations(1): minimumLocations(2));
trial3IsometricTorques = torqueGreater15(minimumLocations(2): minimumLocations(3));
trial4IsometricTorques = torqueGreater15(minimumLocations(3): minimumLocations(4));
trial5IsometricTorques = torqueGreater15(minimumLocations(4): minimumLocations(5)); %
trial6IsometricTorques = torqueGreater15(minimumLocations(5): end);

% trial1IsometricTime = timeGreater15(1: minimumLocations(1));
% trial2IsometricTime = timeGreater15(minimumLocations(1): minimumLocations(2));
% trial3IsometricTime = timeGreater15(minimumLocations(2): minimumLocations(3));
% trial4IsometricTime = timeGreater15(minimumLocations(3): minimumLocations(4));
% trial5IsometricTime = timeGreater15(minimumLocations(4): minimumLocations(5));
% trial6IsometricTime = timeGreater15(minimumLocations(5): end);

%Plots and finds max and average for all trials
% trial1IsometricGraph = plot(trial1IsometricTorques, trial1IsometricTime)
trial1IsometricMaximum = max(trial1IsometricTorques);
trial1IsometricAverage = mean(trial1IsometricTorques);

%trial2Graph = plot(trial2IsometricTorques, trial2IsometricTime);
trial2IsometricMaximum = max(trial2IsometricTorques);
trial2IsometricAverage = mean(trial2IsometricTorques);

%trial3Graph = plot(trial3IsometricTorques, trial3IsometricTime);
trial3IsometricMaximum = max(trial3IsometricTorques);
trial3IsometricAverage = mean(trial3IsometricTorques);

%trial4Graph = plot(trial4IsometricTorques, trial4IsometricTime);
trial4IsometricMaximum = max(trial4IsometricTorques);
trial4IsometricAverage = mean(trial4IsometricTorques);

%trial5Graph = plot(trial5IsometricTorques, trial5IsometricTime);
trial5IsometricMaximum = max(trial5IsometricTorques);
trial5IsometricAverage = mean(trial5IsometricTorques);

%trial6Graph = plot(trial6IsometricTorques, trial6IsometricTime);
trial6IsometrcMaximum = max(trial6IsometricTorques);
trial6IsometricAverage = mean(trial6IsometricTorques);

%Creates sepearte matrix of all trials max and averages, then graphs these
%data
maximumIsometricMatrix = [trial1IsometricMaximum, trial2IsometricMaximum, trial3IsometricMaximum, trial4IsometricMaximum, trial5IsometricMaximum, trial6IsometrcMaximum];
averageIsometricMatrix = [trial1IsometricAverage, trial2IsometricAverage, trial3IsometricAverage, trial4IsometricAverage, trial5IsometricAverage, trial6IsometricAverage];






    


end

