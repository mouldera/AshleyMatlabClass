%Assignment 5

[SubjectID,Age,Gender,Weight,Day1,Day2,Day3] = importfile('isok_data_6803.csv', 2, 26);


[maleIsoIndMeans, maleIsoGroupMean, femaleIsoIndMeans, femaleIsoGroupMean] = genderIsoCalc(Gender, Day1, Day2, Day3)


day1toDay2 = dayComparator(SubjectID, Day1, Day2)


day2toDay3 = dayComparator(SubjectID, Day2, Day3)


normDay1Mean = normalizeWeight(Weight, Day1)


normDay2Mean = normalizeWeight(Weight, Day2)


normDay3Mean = normalizeWeight(Weight, Day3)

  