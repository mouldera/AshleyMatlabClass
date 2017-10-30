function [maleIsoIndMeans, maleIsoGroupMean, femaleIsoIndMeans, femaleIsoGroupMean] = genderIsoCalc(Gender, Day1, Day2, Day3)
%genderIsoCalc Summary
%   Takes the data from the columns Gender, Day1, Day2, and Day3 from the
%   imported file. It then determines each row that belongs to a male or
%   female and calculates the male and female mean forces for each day(maleIsoIndMeans, femaleIsoIndMeans), and
%   then the mean across the three days for both genders (maleIsoGroupMean, femaleIsoGroupmean). 

isoMatrix = [Gender, Day1, Day2, Day3]; %Creates a ne matrix with all the column arrays. Initializes the variables used in the for loops of this function
maleSumDay1 = 0;
maleSumDay2 = 0;
maleSumDay3 = 0;
femaleSumDay1 = 0;
femaleSumDay2 = 0;
femaleSumDay3 = 0;
maleCount = 0;
femaleCount = 0;

for i = 1:length(isoMatrix)
    if Gender(i) == 1 %If the row belongs to a male subject
        maleSumDay1 = maleSumDay1 + Day1(i); %Adds all of the male forces for day 1
        maleSumDay2 = Day2(i) + maleSumDay2; %Adds all of the male forces for day 2
        maleSumDay3 = Day3(i) + maleSumDay3; %Adds all of the male forces for day 3 
        maleCount = maleCount + 1; %Keeps count of the number of male subjects in this data set
    else
        continue
    end
end


%Divides the sum of each day by the number of male participants to
%determine the mean force for all males on each day
maleIsoIndMeans = [(maleSumDay1/maleCount), (maleSumDay2/maleCount), (maleSumDay1/maleCount)];

%Finds the mean force for the male subjects across all three days.
maleIsoGroupMean = (mean(maleIsoIndMeans));

for i = 1:length(isoMatrix)
    if Gender(i) == 2 %Finds the rows with female subjects
        femaleSumDay1 = femaleSumDay1 + Day1(i); %Adds the forces for each female on day1
        femaleSumDay2 = Day2(i) + femaleSumDay2; %Adds the forces for each female on day2
        femaleSumDay3 = Day3(i) + femaleSumDay3; %Adds the forces for each female on day3
        femaleCount = femaleCount +1; %Keeps count of the number of female subjects
    else
        continue
    end
end

%Divides the sum of the forces produced by females for each day by the
%number of female subjects to determine the mean force produced by females
femaleIsoIndMeans = [(femaleSumDay1/femaleCount), (femaleSumDay2/femaleCount), (femaleSumDay3/femaleCount)];

%Calculates the mean force produced by females across all three days
femaleIsoGroupMean = (mean(femaleIsoIndMeans));

end

