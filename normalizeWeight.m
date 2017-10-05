function [ normIsoMean ] = normalizeWeight( Weight, day )
%UNTITLED8 Summary of this function goes here
%   Detailed explanation goes here

normalizeWeightMatrix = [ Weight, day];
normIso = zeros(25,1);

for i = 1:length(normalizeWeightMatrix)
    normIso(i) = (day(i)/Weight(i));
end

normIsoMean = mean(normIso);

end

