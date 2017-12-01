%% Dynamometer Data Analyzing Code
%Ashley Moulder  12/1/17
%This Code will import isometric or isokinetic data from a .csv file. It
%will seperate the trial torques or positions. It will then give the torque
%averages for each trial, the torque peaks for each trial. It will then
%give a bar graph of these data. It will also give a line graph of the
%torques for each trial over time. 

%% Instructions: Code will first prompt user to identify if data is isometric
% or isokinetic. Then the code will ask for the name of the file, this will
% have to be in string format with .csv at the end. The files provided in
% this folder are isometricData.csv and isokineticData.csv. You will also
% need to know the start and end row of the data file you would like to
% import. 
%For isometricData.csv start row = 1, end row = 20417. 
%For isokineticData.csv start row = 1, end row = 9952.

%% Note: The code does not have a for Loop for seperating trials. Please
%change the trial numbers in the isometricDataFunction,
%isokineticDataFunctionTorques, and findIsokineticPositionTrials before
%proceeding.


% Initializes the dataImport variable that is used to continue through the
% while loop. The while loop will end when the dataImport is changed at the
% end of the loop if the user no longer wishes to import another file.
dataImport = 1;

while dataImport == 1
    %This just tells the user to only use .csv files, this code has been
    %been tested for other file formats, and the code might not run
    %properly if file is not .csv. The code only allows for the import of
    %worksheet 1 of anyfile, so saving multiple worksheets into different
    %files is also crucial.
    fprintf(2, 'WARNING: Please make sure files are .csv, program will only import data from worksheet 1.\n')
    %Asks user if the file contains isometric data or isokinetic data. If
    %isometric the user will type 1, if isokinetic user will type 2
    fileType = input('Enter 1 if data is isometric. \nEnter 2 if data is isokinetic.\n:');
    if fileType == 1
        %Asks user for information required to run the import function.
        %File name, start row, and end row are required to run the import
        %function
        filename = input('Please input the file name (Use apostrophes around input):');
        startRow = input('What is the start row?');
        endRow = input('What is the end row?');
        %Import Function: This function imports isometric data.
        [isometricTime, isometricPosition, isometricTorque] = importProjectData(filename , startRow, endRow);
        %Creates matrix for data to organize information
        isometricTimeAndTorqueMatrix = [isometricTime, isometricTorque];
        
        %Call isometricDataFunction: Will use information from imported
        %files to seperate trials, then get an average and max torque value
        %for all isometric trials. The output will be the maximum isometric
        %values in a matrix, the average isometric values in a matrix, and
        %then each trial's isometric torques. If you have more or less than
        %6 trials, the code needs to be altered as it does not have a loop
        %function
        [ maximumIsometricMatrix, averageIsometricMatrix, trial1IsometricTorques, trial2IsometricTorques, trial3IsometricTorques, trial4IsometricTorques, trial5IsometricTorques, trial6IsometricTorques ] = isometricDataFunction( isometricTimeAndTorqueMatrix, isometricTime, isometricTorque );
 
        %Creates a bar graph for both the max and average torques for each
        %trial from output data from isometricDataFunction above.
        
       
        maximumIsometricTorquesGraph = subplot(2,1,1), bar(maximumIsometricMatrix)
        title(maximumIsometricTorquesGraph, 'Maximum Isometric Torques');
        xlabel(maximumIsometricTorquesGraph, 'Trial Number');
        ylabel(maximumIsometricTorquesGraph, 'Torque (N/m)');
        averageIsometricTorquesGraph = subplot(2,1,2), bar(averageIsometricMatrix)
        title(averageIsometricTorquesGraph, 'Average Isometric Torques');
        xlabel(averageIsometricTorquesGraph, 'Trial Number');
        ylabel(averageIsometricTorquesGraph, 'Torque (N/m)');
        
        %Makes table for writetable function and exports info to a new
        %excel sheet called isometricResults.csv
        maximumIsometricTorques = maximumIsometricMatrix';
        averageIsometricTorques = averageIsometricMatrix';
        columnLabels = ['Maximum Isometric Torque'; 'Average Isometric Torque']; 
        Trial = {'Trial 1'; 'Trial 2'; 'Trial 3'; 'Trial 4'; 'Trial 5'; 'Trial 6'};
        exportTable = table((maximumIsometricTorques), (averageIsometricTorques), 'RowName', Trial)
        writetable(exportTable,'isometricResults.csv','WriteRowNames',true)  
        fprintf('Excel File has been saved under isometricResults.csv\n')
        
        %These create sepearte figures for each time and isometric torque
        %graph from data from output of isometricDataFunction
        f2 = figure;
        isometricAndTimeGraph1 = plot(trial1IsometricTorques)
        title('Trial 1 Torque');
        xlabel('Time');
        ylabel('Torque (N/m)');
        
        f3 = figure;
        isometricAndTimeGraph2 = plot(trial2IsometricTorques)
        title('Trial 2 Torque');
        xlabel('Time');
        ylabel('Torque (N/m)');
        
        f4 = figure;
        isometricAndTimeGraph3 = plot(trial3IsometricTorques)
        title('Trial 3 Torque');
        xlabel('Time');
        ylabel('Torque (N/m)');
        
        f5 = figure;
        isometricAndTimeGraph4 = plot(trial4IsometricTorques)
        title('Trial 4 Torque');
        xlabel('Time');
        ylabel('Torque (N/m)');
        
        f6 = figure;
        isometricAndTimeGraph5 = plot(trial5IsometricTorques)
        title('Trial 5 Torque');
        xlabel('Time');
        ylabel('Torque (N/m)');
        
        f7 = figure;
        isometricAndTimeGraph6 = plot(trial6IsometricTorques)
        title('Trial 6 Torque');
        xlabel('Time');
        ylabel('Torque (N/m)');
        
        
%If initial input of fileType = 2, this indicates an isokinetic data set
%and will run this code to analyze the data
    else 
        %Gets input needed to run importProjectData import function.
        %Filename, startrow, and endrow.
        filename = input('Please input the file name (Use apostrophes around input):');
        startRow = input('What is the start row?');
        endRow = input('What is the end row?');
        
        %Import Function, exports isokinetic Time, Position, and Toques
        [isokineticTime, isokineticPosition, isokineticTorque] = importProjectData(filename, startRow, endRow);
        
        %Creates Matrix for time, position, and torque
        isokineticTimeAndPositionAndTorqueMatrix = [isokineticTime, isokineticPosition, isokineticTorque];
        
        %Function creates column vectors of positions for each trial. Here
        %in case user would like to view or graph. This code does not use
        %these data.
        [trial1IsokineticPositions, trial2IsokineticPositions, trial3IsokineticPositions, trial4IsokineticPositions, trial5IsokineticPositions, trial6IsokineticPositions, trial7IsokineticPositions  ] = findIsokineticPositionTrials( isokineticTime, isokineticPosition, isokineticTorque );
        
        %Creates column Vectors for max, average, and each trial torques.
        %The max value matrix and average value matrix are exported. The
        %isokinetic torques will be graphed over time below. 
        [ maximumIsokineticMatrix, averageIsokineticMatrix, trial1IsokineticTorques, trial2IsokineticTorques, trial3IsokineticTorques, trial4IsokineticTorques, trial5IsokineticTorques, trial6IsokineticTorques, trial7IsokineticTorques  ] = isokineticDataFunctionTorques( isokineticTime, isokineticPosition, isokineticTorque);
        
        %Graphs the max and average isokinetic torques for each trial as bargraphs
        
        maximumIsokineticTorquesGraph = subplot(2,1,1), bar(maximumIsokineticMatrix)
        title(maximumIsokineticTorquesGraph, 'Maximum Isokinetic Torques');
        xlabel(maximumIsokineticTorquesGraph, 'Trial Number');
        ylabel(maximumIsokineticTorquesGraph, 'Torque (N/m)');
        averageIsokineticTorquesGraph = subplot(2,1,2), bar(averageIsokineticMatrix)
        title(averageIsokineticTorquesGraph, 'Average Isokinetic Torques');
        xlabel(averageIsokineticTorquesGraph, 'Trial Number');
        ylabel(averageIsokineticTorquesGraph, 'Torque (N/m)');
       
        %Exports max and average torques to excel file titled
        %'isokineticResults.csv'
        maximumIsokineticTorques = maximumIsokineticMatrix';
        averageIsokineticTorques = averageIsokineticMatrix';
        columnLabels = ['Maximum Isometric Torque'; 'Average Isometric Torque']; 
        Trial = {'Trial 1'; 'Trial 2'; 'Trial 3'; 'Trial 4'; 'Trial 5'; 'Trial 6'; 'Trial 7'};
        exportTable = table((maximumIsokineticTorques), (averageIsokineticTorques), 'RowName', Trial)
        writetable(exportTable,'isokineticResults.csv','WriteRowNames',true)
        fprintf('Excel File has been saved under isokineticResults.csv\n')
        
        %These figures graph the isokinetic torques over time from data
        %output from isokineticDataFunctionTorques function
        f2 = figure;
        isokineticAndTimeGraph1 = plot(trial1IsokineticTorques)
        title('Trial 1 Torque');
        xlabel('Time (ms)');
        ylabel('Torque (N/m)');
        
        f3 = figure;
        isokineticAndTimeGraph2 = plot(trial2IsokineticTorques)
        title('Trial 2 Torque');
        xlabel('Time (ms)');
        ylabel('Torque (N/m)');
        
        f4 = figure;
        isokineticAndTimeGraph3 = plot(trial3IsokineticTorques)
        title('Trial 3 Torque');
        xlabel('Time (ms)');
        ylabel('Torque (N/m)');
        
        f5 = figure;
        isokineticAndTimeGraph4 = plot(trial4IsokineticTorques)
        title('Trial 4 Torque');
        xlabel('Time (ms)');
        ylabel('Torque (N/m)');
        
        f6 = figure;
        isokineticAndTimeGraph5 = plot(trial5IsokineticTorques)
        title('Trial 5 Torque');
        xlabel('Time (ms)');
        ylabel('Torque (N/m)');
        
        f7 = figure;
        isokineticAndTimeGraph6 = plot(trial6IsokineticTorques)
        title('Trial 6 Torque');
        xlabel('Time (ms)');
        ylabel('Torque (N/m)');
        
        f8 = figure;
        isokineticAndTimeGraph7 = plot(trial7IsokineticTorques)
        title('Trial 7 Torque');
        xlabel('Time (ms)');
        ylabel('Torque (N/m)');

    end
    %Prompts user if they would like to import another data file, If no,
    %the program will end, if yes it prompts the user below
    dataImport = input('Would you like to import another data file? (1 for yes, 2 for no):');
    if dataImport == 1
        %Warns the user that the excel file and graphs that were just created will be saved
        %over if they import a new data file. 
        fprintf(2, 'WARNING: MatLab will use the same export file name, please save all files and graphs under a new name before continuing.\nExcel File is under either isometricResults.csv or isokineticResults.csv\n')
        dataImport = input('If you are ready to continue enter 1.\nIf you do not wish to import another file, enter 2 to escape.\n:');
        %If entry is 1= ready, the file will loop back to the beginning and
        %ask what type of file. if entry is 2= do not wish to continue, the
        %program will end
    else
        break
    end
end


