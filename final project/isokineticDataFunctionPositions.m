function [trial1IsokineticPositions, trial2IsokineticPositions, trial3IsokineticPositions, trial4IsokineticPositions, trial5IsokineticPositions, trial6IsokineticPositions, trial7IsokineticPositions  ] = findIsokineticPositionTrials( isokineticTime, isokineticPosition, isokineticTorque )
%UNTITLED11 Summary of this function goes here
%   Detailed explanation goes here

isokineticTimeAndPositionAndTorqueMatrix = [isokineticTime, isokineticPosition, isokineticTorque];


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
trial1IsokineticPositions = isokineticPosition(1: peakLocationsInt(1));
trial2IsokineticPositions = isokineticPosition(peakLocationsInt(1): peakLocationsInt(2));
trial3IsokineticPositions = isokineticPosition(peakLocationsInt(2): peakLocationsInt(3));
trial4IsokineticPositions = isokineticPosition(peakLocationsInt(3): peakLocationsInt(4));
trial5IsokineticPositions = isokineticPosition(peakLocationsInt(4): peakLocationsInt(5)); %something wrong with peakLocations(5)?
trial6IsokineticPositions = isokineticPosition(peakLocationsInt(5): peakLocationsInt(6));
trial7IsokineticPositions = isokineticPosition(peakLocationsInt(6): end);
end

