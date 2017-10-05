function [increaseIsoMatrix] = dayComparator(SubjectID, firstDay, secondDay )
%dayComparator Summary of this function goes here
%   Detailed explanation goes here

subjectDayMatrix = [SubjectID, firstDay, secondDay];
increaseIso = zeros(50,1);
for i = 1:length(subjectDayMatrix)
    if (firstDay(i) - secondDay(i)) > 0
        continue
    end
    increaseIso(i) = (SubjectID(i));
end

increaseIsoMatrix = increaseIso(increaseIso ~= 0);

end

