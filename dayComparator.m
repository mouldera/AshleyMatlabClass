function [increaseIsoMatrix] = dayComparator(SubjectID, firstDay, secondDay )
%dayComparator Summary
%   Creates a new column with the subjectIDs who improved from the first
%   day input to the second day input. 

subjectDayMatrix = [SubjectID, firstDay, secondDay]; %Creates a matrix of the input columns
increaseIso = zeros(50,1); %Initializes a matrix for the new column of subjectIDs being created
for i = 1:length(subjectDayMatrix) %Goes through the entire matrix and then stops
    if (secondDay(i) - firstDay(i)) > 0 %If the second day was greater than the first day, the difference will be greater than zero
        continue
    end
    increaseIso(i) = (SubjectID(i)); %Creates a new array column with the subjectIDs that meet the requirments above, however the ones that were not larger are now zeros
end

increaseIsoMatrix = increaseIso(increaseIso ~= 0); %Creaes a new column without the zeros and only SubjectIDs

end

