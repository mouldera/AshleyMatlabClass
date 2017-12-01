function [ maximumIsokineticMatrix, averageIsokineticMatrix, trial1IsokineticTorques, trial2IsokineticTorques, trial3IsokineticTorques, trial4IsokineticTorques, trial5IsokineticTorques, trial6IsokineticTorques, trial7IsokineticTorques  ] = isokineticDataFunctionTorques( isokineticTime, isokineticPosition, isokineticTorque)
%UNTITLED12 Summary of this function goes here
%   Detailed explanation goes here
[peakPosition, peakTime] = findpeaks(isokineticPosition, isokineticTime ,'MinPeakProminence',40);
findpeaks(isokineticPosition, isokineticTime ,'MinPeakProminence',40);

%Shouldn't have to do this.peakTime should equal the peak times of the
%isokineticTime without having to make it hard. woop.
%Initializes minimumLocations
% maximumLocations = zeros(6,1);
%creates a new array for the maximumLocations from the locations of the
%maximum times found previously with findpeaks
% for i = 1:length(peakTime)
% maximumLocations(i) = find(isokineticTime == peakTime(i));
% end
peakLocations = peakTime *100;
peakLocationsInt = int64(peakLocations);
%Uses maximumLocations to seperate the trials into their own vectors

trial1IsokineticTorquesAll = isokineticTorque(1: peakLocationsInt(1));
trial2IsokineticTorquesAll = isokineticTorque(peakLocationsInt(1): peakLocationsInt(2));
trial3IsokineticTorquesAll = isokineticTorque(peakLocationsInt(2): peakLocationsInt(3));
trial4IsokineticTorquesAll = isokineticTorque(peakLocationsInt(3): peakLocationsInt(4));
trial5IsokineticTorquesAll = isokineticTorque(peakLocationsInt(4): peakLocationsInt(5)); %something wrong with peakLocations(5)?
trial6IsokineticTorquesAll = isokineticTorque(peakLocationsInt(5): peakLocationsInt(6));
trial7IsokineticTorquesAll = isokineticTorque(peakLocationsInt(6): end);

%Finds the locations of torques that are greater that 15, uses location to
%create a new column vecotr with those torques.
trial1IsokineticTorques15 = find(trial1IsokineticTorquesAll >15);
trial1IsokineticTorques = trial1IsokineticTorquesAll(trial1IsokineticTorques15);

trial2IsokineticTorques15 = find(trial2IsokineticTorquesAll >15);
trial2IsokineticTorques = trial2IsokineticTorquesAll(trial2IsokineticTorques15);

trial3IsokineticTorques15 = find(trial3IsokineticTorquesAll >15);
trial3IsokineticTorques = trial3IsokineticTorquesAll(trial3IsokineticTorques15);

trial4IsokineticTorques15 = find(trial4IsokineticTorquesAll >15);
trial4IsokineticTorques = trial4IsokineticTorquesAll(trial4IsokineticTorques15);

trial5IsokineticTorques15 = find(trial5IsokineticTorquesAll >15);
trial5IsokineticTorques = trial5IsokineticTorquesAll(trial5IsokineticTorques15);

trial6IsokineticTorques15 = find(trial6IsokineticTorquesAll >15);
trial6IsokineticTorques = trial6IsokineticTorquesAll(trial6IsokineticTorques15);

trial7IsokineticTorques15 = find(trial7IsokineticTorquesAll >15);
trial7IsokineticTorques = trial7IsokineticTorquesAll(trial7IsokineticTorques15);


% %Plots and finds max and average for all trials
trial1Graph = plot(trial1IsokineticTorques);
trial1Maximum = max(trial1IsokineticTorques);
trial1Average = mean(trial1IsokineticTorques);

trial2Graph = plot(trial2IsokineticTorques);
trial2Maximum = max(trial2IsokineticTorques);
trial2Average = mean(trial2IsokineticTorques);

trial3Graph = plot(trial3IsokineticTorques);
trial3Maximum = max(trial3IsokineticTorques);
trial3Average = mean(trial3IsokineticTorques);

trial4Graph = plot(trial4IsokineticTorques);
trial4Maximum = max(trial4IsokineticTorques);
trial4Average = mean(trial4IsokineticTorques);

trial5Graph = plot(trial5IsokineticTorques);
trial5Maximum = max(trial5IsokineticTorques);
trial5Average = mean(trial5IsokineticTorques);

trial6Graph = plot(trial6IsokineticTorques);
trial6Maximum = max(trial6IsokineticTorques);
trial6Average = mean(trial6IsokineticTorques);

trial7Graph = plot(trial7IsokineticTorques);
trial7Maximum = max(trial7IsokineticTorques);
trial7Average = mean(trial7IsokineticTorques);
% 
% %Creates sepearte matrix of all trials max and averages, then graphs these
% %data
maximumIsokineticMatrix = [trial1Maximum, trial2Maximum, trial3Maximum, trial4Maximum, trial5Maximum, trial6Maximum, trial7Maximum];
averageIsokineticMatrix = [trial1Average, trial2Average, trial3Average, trial4Average, trial5Average, trial6Average, trial7Average];
% maximumIsokineticTorquesGraph = subplot(2,1,1), bar(maximumIsokineticMatrix)
% title(maximumIsokineticTorquesGraph, 'Maximum Isokinetic Torques')
% xlabel(maximumIsokineticTorquesGraph, 'Trial Number')
% ylabel(maximumIsokineticTorquesGraph, 'Torque (N/m)')
% averageIsokineticTorquesGraph = subplot(2,1,2), bar(averageIsokineticMatrix)
% title(averageIsokineticTorquesGraph, 'Average Isokinetic Torques')
% xlabel(averageIsokineticTorquesGraph, 'Trial Number')
% ylabel(averageIsokineticTorquesGraph, 'Torque (N/m)')

end

