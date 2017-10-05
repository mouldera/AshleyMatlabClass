function [maleIsoIndMeans, maleIsoGroupMean, femaleIsoIndMeans, femaleIsoGroupMean] = genderIsoCalc(Gender, Day1, Day2, Day3)
%genderIsoCalc Summary of this function goes here
%   Detailed explanation goes here

isoMatrix = [Gender, Day1, Day2, Day3];
maleSumDay1 = 0;
maleSumDay2 = 0;
maleSumDay3 = 0;
femaleSumDay1 = 0;
femaleSumDay2 = 0;
femaleSumDay3 = 0;

for i = 1:length(isoMatrix)
    if Gender(i) == 1
        maleSumDay1 = maleSumDay1 + Day1(i);       
    else
        continue
    end
end

for j = 1:length(isoMatrix)
    if Gender(j) == 1
        maleSumDay2 = Day2(j) + maleSumDay2;       
    else
        continue
    end
end

for k = 1:length(isoMatrix)
    if Gender(k) == 1
        maleSumDay3 = Day3(k) + maleSumDay3;       
    else
        continue
    end
end

maleIsoIndMeans = [mean(maleSumDay1), mean(maleSumDay2), mean(maleSumDay3)];

maleIsoGroupMean = (mean(maleIsoIndMeans));

for i = 1:length(isoMatrix)
    if Gender(i) == 2
        femaleSumDay1 = femaleSumDay1 + Day1(i);       
    else
        continue
    end
end

for j = 1:length(isoMatrix)
    if Gender(j) == 2
        femaleSumDay2 = Day2(j) + femaleSumDay2;       
    else
        continue
    end
end

for k = 1:length(isoMatrix)
    if Gender(k) == 2
        femaleSumDay3 = Day3(k) + femaleSumDay3;       
    else
        continue
    end
end

femaleIsoIndMeans = [mean(femaleSumDay1), mean(femaleSumDay2), mean(femaleSumDay3)];

femaleIsoGroupMean = (mean(femaleIsoIndMeans));

end

