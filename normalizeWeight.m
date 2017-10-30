function [ normIsoMean ] = normalizeWeight( Weight, day )
%normalizeWeight Summary
%   normalizes the forces for each subject and then averages the normal
%   forces for the day input

normalizeWeightMatrix = [ Weight, day]; %Creates a matrix for the weight and day input
normIso = zeros(25,1); %initializes an array for the normalized forces

for i = 1:length(normalizeWeightMatrix) %Goes through the length of the matrix
    normIso(i) = (day(i)/Weight(i)); %normalizes the forces for the day by dividing the force by the subject's weight for the day input
end

normIsoMean = mean(normIso); %Creates a mean normalized force from the normalized forces for the one day.

end

