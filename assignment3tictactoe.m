% Assignment 3: Tic Tac Toe
% Ashley Moulder 9/26/2017
%This code allows the player to play a game of Tic Tac Toe against the
%computer. The computer gives the instructions and then takes the first
%turn. The computer then prompts the player to enter their move. Based on
%the player's move, the computer uses a series of if else statements in
%order to determine the the best possible move. This goes on until there is a
%winner or the game ends in a tie. 

clear
clc % clears workspace and command window before running program

%Introduction and instructions on how to play.
fprintf(2, 'YO YO YO, WELCOME TO TIC-TAC-TOE, MY NAME IS MATLAB.\n\n')
pause(3)
fprintf (2,'Here is how this ish is gunna go down.\nI will be 1, You will be 2.\n\nYou will be prompted to enter Row (across) position (1, 2, or 3) first. \n\nThen you will enter the Column (up & down) position(1, 2, or 3)\n \nHere is the board.')
pause(7)
tictactoe = zeros(3,3) %Displays a blank board
pause(3)
fprintf (2, 'I will go first\n')
pause(1)

%Turn 1

%Computer's Turn 1
tictactoe(3,3) = 1

pause(1)
fprintf(2, '\nThis is your first move, think carefully and wisely, and then prepare for your defeat.\nPlease do not cry on me when you lose, I will shortcircuit.\n')

pause(2)
%Human's Turn 1
row1 = input('row?'); %Prompts player to enter the row they would like to place their move
col1 = input('column?'); %Prompts player to enter the column they would like to place their move
if isempty(row1) %If the row is left empty
    fprintf(2, 'Yo, you forgot to enter a move.\n') %Computer tells the player their error
    row1 = input('row?'); %Prompts player to try again
    col1 = input('column?');
    tictactoe(row1, col1) = 2;
    if isempty(row1) || isempty(col1)|| tictactoe(row1,col1) == 2 || tictactoe(row1,col1) == 1 || (row1 > 3) || (row1 < 1) || (col1 > 3) || (col1 < 1)
        fprintf(2, 'Stop that nonsense. If you cannot play right, we will not play at all.\n GOTTA BAIL, SLIMY SNAIL')
        pause(4)
        quit %If the player makes the same mistake or a similar mistake, matlab will quit the game.
    else
        tictactoe(row1,col1) = 2;
    end
elseif  isempty(col1) %If the column is left empty
    fprintf(2, 'Yo, you forgot to enter a move.\n')
    row1 = input('row?');
    col1 = input('column?');
    tictactoe(row1, col1) = 2;
    if isempty(row1) || isempty(col1)|| tictactoe(row1,col1) == 2 || tictactoe(row1,col1) == 1 || (row1 > 3) || (row1 < 1) || (col1 > 3) || (col1 < 1)
        fprintf(2, 'Stop that nonsense. If you cannot play right, we will not play at all.\n GOTTA BAIL, SLIMY SNAIL')
        pause(4)
        quit
    else
        tictactoe(row1,col1) = 2;
    end
elseif (row1 > 3) || (row1 < 1) %If the row entered is outside of the matrix
    fprintf(2, 'That is not a valid entry, the rules were pretty specific, pick a row 1, 2, or 3 and then pick a column 1, 2, or 3. Please try again. \n')
    row1 = input('row?');
    col1 = input('column?');
    if isempty(row1) || isempty(col1)|| tictactoe(row1,col1) == 2 || tictactoe(row1,col1) == 1 || (row1 > 3) || (row1 < 1) || (col1 > 3) || (col1 < 1)
        fprintf(2, 'Obviously you are so scared that you have to resort to cheating.\n I have you know, I do not play with cheaters. \nI AM OUTTA HERE, REINDEER.\n')
        pause(4)
        quit
    else
        tictactoe(row1,col1) = 2;
    end
elseif (col1 > 3) || (col1 < 1) %If the column entered is outside of the matrix
    fprintf(2, 'That is not a valid entry, the rules were pretty specific, pick a row 1, 2, or 3 and then pick a column 1, 2, or 3. Please try again. \n')
    row1 = input('row?');
    col1 = input('column?');
    if isempty(row1) || isempty(col1)|| tictactoe(row1,col1) == 2 || tictactoe(row1,col1) == 1 || (row1 > 3) || (row1 < 1) || (col1 > 3) || (col1 < 1)
        fprintf(2, 'Obviously you are so scared that you have to resort to cheating.\n I have you know, I do not play with cheaters. \nI AM OUTTA HERE, REINDEER.\n')
        pause(4)
        quit
    else
        tictactoe(row1,col1) = 2;
    end
else
    tictactoe(row1, col1) = 2; %If the player enters correct paramaters, then the 0 turns into a 2
    pause(2)
    fprintf(2, 'That was your first move? Yikes.\n')
    pause(2)
end


%Turn 2


%Computer's Turn 2- Computer will first to check if there is a winner. Then
%check if the player won. Then if there is a way to win (it has two 1s in a
%row), if yes, the computer will play in the open spot and win the game.
%Then the computer checks if there is a way for the player to win (if the
%player has two 2s in a row), if yes, the computer will play the open spot
%to block it. If none of those are true, the computer will play in the
%first open spot listed. This order remains the same for each computer turn
%unless otherwise stated
if((tictactoe(1,1) == 2)&& (tictactoe(1,2) == 2)&& (tictactoe(1,3) == 2)) || ((tictactoe(2,1) ==2) && (tictactoe(2,2) ==2) && (tictactoe(2,3) ==2)) || ((tictactoe(3,1)== 2) && (tictactoe(3,2)== 2)&& (tictactoe(3,3)== 2)) || ((tictactoe(1,1)== 2) && (tictactoe(2,1)== 2) && (tictactoe(3,1)== 2))|| ((tictactoe(1,2)== 2) && (tictactoe(2,2)== 2)&& (tictactoe(3,2)== 2)) || ((tictactoe(1,3) == 2) && (tictactoe(2,3)== 2) && (tictactoe(3,3)== 2)) || ((tictactoe(1,1) ==2) && (tictactoe(2,2) ==2) && (tictactoe(3,3)==2)) || ((tictactoe(1,3) ==2) && (tictactoe(2,2) ==2) && (tictactoe(3,1) ==2)) || ((tictactoe(1,1) == 1)&& (tictactoe(1,2) == 1)&& (tictactoe(1,3) == 1)) || ((tictactoe(2,1) ==1) && (tictactoe(2,2) ==1) && (tictactoe(2,3) ==1)) || ((tictactoe(3,1)== 1) && (tictactoe(3,2)== 1)&& (tictactoe(3,3)== 1)) || ((tictactoe(1,1)== 1) && (tictactoe(2,1)== 1) && (tictactoe(3,1)== 1))|| ((tictactoe(1,2)== 1) && (tictactoe(2,2)== 1)&& (tictactoe(3,2)== 1)) || ((tictactoe(1,3) == 1) && (tictactoe(2,3)== 1) && (tictactoe(3,3)== 1)) || ((tictactoe(1,1) ==1) && (tictactoe(2,2) ==1) && (tictactoe(3,3)==1)) || ((tictactoe(1,3) ==1) && (tictactoe(2,2) ==1) && (tictactoe(3,1) ==1))
    fprintf('wahoo\n') %Is there a winner?
    if((tictactoe(1,1) == 2)&& (tictactoe(1,2) == 2)&& (tictactoe(1,3) == 2)) || ((tictactoe(2,1) ==2) && (tictactoe(2,2) ==2) && (tictactoe(2,3) ==2)) || ((tictactoe(3,1)== 2) && (tictactoe(3,2)== 2)&& (tictactoe(3,3)== 2)) || ((tictactoe(1,1)== 2) && (tictactoe(2,1)== 2) && (tictactoe(3,1)== 2))|| ((tictactoe(1,2)== 2) && (tictactoe(2,2)== 2)&& (tictactoe(3,2)== 2)) || ((tictactoe(1,3) == 2) && (tictactoe(2,3)== 2) && (tictactoe(3,3)== 2)) || ((tictactoe(1,1) ==2) && (tictactoe(2,2) ==2) && (tictactoe(3,3)==2)) || ((tictactoe(1,3) ==2) && (tictactoe(2,2) ==2) && (tictactoe(3,1) ==2))
    fprintf(2, 'I felt bad that I was going to win, I did not want to hurt your poor human feelings. Rematch?') %If the human has won.
    end %if there is a winner and it is not the human, the computer will skip to the next turn
elseif ((tictactoe(1,1) == 1) && (tictactoe(3,3) == 1) && (tictactoe(2,2)== 0)) || ((tictactoe(1,3)== 1) && (tictactoe(3,1) == 1) && (tictactoe(2,2) == 0))
    tictactoe(2,2) = 1  %Checking if there is a possible win situation  
    fprintf(2, 'I WIN :) \n ')
elseif(tictactoe(1,1) ==1) && (tictactoe(2,2) == 1) && (tictactoe(3,3) == 0)
    tictactoe(3,3) = 1
    fprintf(2, 'I WIN :) \n')
elseif(tictactoe(2,2) ==1) && (tictactoe(3,3)== 1) && (tictactoe(1,1) == 0)
    tictactoe(1,1) = 1
    fprintf(2, 'I WIN :) \n')
elseif(tictactoe(1,3) ==1) && (tictactoe(2,2)== 1) && (tictactoe(3,1)== 0)
    tictactoe(3,1) = 1
    fprintf(2, 'I WIN :) \n')
elseif(tictactoe(2,2) ==1) && (tictactoe(3,1) ==1) && (tictactoe(1,3) == 0)
    tictactoe(1,3)= 1
    fprintf(2, 'I WIN :) \n')
elseif (tictactoe(1,1) == 1) && (tictactoe(1,2) == 1) && (tictactoe(1,3) == 0)
    tictactoe(1,3) = 1
    fprintf(2, 'I WIN :) \n') 
elseif (tictactoe(1,1)== 1) && (tictactoe(1,3) == 1) && (tictactoe(1,2) == 0)
    tictactoe(1,2) = 1
    fprintf(2, 'I WIN :) \n')
elseif (tictactoe(1,2) == 1) && (tictactoe(1,3)== 1) && (tictactoe(1,1) == 0)
    tictactoe(1,1) = 1
    fprintf(2, 'I WIN :) \n')
elseif (tictactoe(1,1)== 1) && (tictactoe(2,1) == 1) && (tictactoe(3,1) == 0)
    tictactoe(3,1) = 1
    fprintf(2, 'I WIN :) \n')
elseif (tictactoe(1,1)== 1) && (tictactoe(3,1) == 1) && (tictactoe(2,1) == 0)
    tictactoe(2,1) = 1
    fprintf(2, 'I WIN :) \n')
elseif (tictactoe(2,1)== 1) && (tictactoe(3,1) == 1) && (tictactoe(1,1) == 0)
    tictactoe(1,1) = 1
    fprintf(2, 'I WIN :) \n')
elseif (tictactoe(2,1)== 1) && (tictactoe(2,2) == 1) && (tictactoe(2,3) == 0)
    tictactoe(2,3) = 1
    fprintf(2, 'I WIN :) \n')
elseif (tictactoe(2,2) == 1) && (tictactoe(2,3) == 1) && (tictactoe(2,1) == 0)
    tictactoe(2,1) = 1
    fprintf(2, 'I WIN :) \n')
elseif (tictactoe(2,1) == 1) && (tictactoe(2,3)== 1) && (tictactoe(2,2) == 0)
    tictactoe(2,2) = 1
    fprintf(2, 'I WIN :) \n')
elseif (tictactoe(3,1) == 1) && (tictactoe(3,2) == 1) && (tictactoe(3,3) == 0)
    tictactoe(3,3) = 1
    fprintf(2, 'I WIN :) \n')
elseif(tictactoe(3,2) == 1) && (tictactoe(3,3) == 1) && (tictactoe(3,1) == 0)
    tictactoe(3,1) = 1
    fprintf(2, 'I WIN :) \n')
elseif(tictactoe(3,1) == 1) && (tictactoe(3,3) == 1) && (tictactoe(3,2) == 0)
    tictactoe(3,2) = 1
    fprintf(2, 'I WIN :) \n')
elseif(tictactoe(1,2) == 1) && (tictactoe(2,2) ==1) && (tictactoe(3,2) == 0)
    tictactoe(3,2) = 1
    fprintf(2, 'I WIN :) \n')
elseif(tictactoe(1,2) == 1) && (tictactoe(3,2) ==1) && (tictactoe(2,2) == 0)
    tictactoe(2,2) = 1
    fprintf(2, 'I WIN :) \n')
elseif(tictactoe(2,2) ==1) && (tictactoe(3,2)== 1) && (tictactoe(1,2) == 0)
    tictactoe(1,2) =1
    fprintf(2, 'I WIN :) \n')
elseif(tictactoe(1,3) ==1) && (tictactoe(2,3) ==1) && (tictactoe(3,3)== 0)
    tictactoe(3,3)= 1
    fprintf(2, 'I WIN :) \n')
elseif(tictactoe(1,3) == 1) && (tictactoe(3,3) ==1) && (tictactoe(2,3) == 0)
    tictactoe(2,3) = 1
    fprintf(2, 'I WIN :) \n')
elseif(tictactoe(2,3) ==1) && (tictactoe(3,3) == 1) && (tictactoe(1,3) == 0)
    tictactoe(1,3) = 1
    fprintf(2, 'I WIN :) \n')    
elseif ((tictactoe(1,1) == 2) && (tictactoe(3,3) == 2) && (tictactoe(2,2)== 0)) || ((tictactoe(1,3)== 2) && (tictactoe(3,1) == 2) && (tictactoe(2,2) == 0))
    tictactoe(2,2) = 1 %Checking if there is a possible move to block the player   
elseif(tictactoe(1,1) ==2) && (tictactoe(2,2) == 2) && (tictactoe(3,3) == 0)
    tictactoe(3,3) = 1
elseif(tictactoe(2,2) ==2) && (tictactoe(3,3)== 2) && (tictactoe(1,1) == 0)
    tictactoe(1,1) = 1
elseif(tictactoe(1,3) ==2) && (tictactoe(2,2)== 2) && (tictactoe(3,1)== 0)
    tictactoe(3,1) = 1
elseif(tictactoe(2,2) ==2) && (tictactoe(3,1) ==2) && (tictactoe(1,3) == 0)
    tictactoe(1,3)= 1
elseif (tictactoe(1,1) == 2) && (tictactoe(1,2) == 2) && (tictactoe(1,3) == 0)
    tictactoe(1,3) = 1
elseif (tictactoe(1,1)== 2) && (tictactoe(1,3) == 2) && (tictactoe(1,2) == 0)
    tictactoe(1,2) = 1
elseif (tictactoe(1,2) == 2) && (tictactoe(1,3)== 2) && (tictactoe(1,1) == 0)
    tictactoe(1,1) = 1
elseif (tictactoe(1,1)== 2) && (tictactoe(2,1) == 2) && (tictactoe(3,1) == 0)
    tictactoe(3,1) = 1
elseif (tictactoe(1,1)== 2) && (tictactoe(3,1) == 2) && (tictactoe(2,1) == 0)
    tictactoe(2,1) = 1
elseif (tictactoe(2,1)== 2) && (tictactoe(3,1) == 2) && (tictactoe(1,1) == 0)
    tictactoe(1,1) = 1
elseif (tictactoe(2,1)== 2) && (tictactoe(2,2) == 2) && (tictactoe(2,3) == 0)
    tictactoe(2,3) = 1
elseif (tictactoe(2,2) == 2) && (tictactoe(2,3) == 2) && (tictactoe(2,1) == 0)
    tictactoe(2,1) = 1
elseif (tictactoe(2,1) == 2) && (tictactoe(2,3)== 2) && (tictactoe(2,2) == 0)
    tictactoe(2,2) = 1
elseif (tictactoe(3,1) == 2) && (tictactoe(3,2) == 2) && (tictactoe(3,3) == 0)
    tictactoe(3,3) = 1
elseif(tictactoe(3,2) == 2) && (tictactoe(3,3) == 2) && (tictactoe(3,1) == 0)
    tictactoe(3,1) = 1
elseif(tictactoe(3,1) == 2) && (tictactoe(3,3) == 2) && (tictactoe(3,2) == 0)
    tictactoe(3,2) = 1
elseif(tictactoe(1,2) == 2) && (tictactoe(2,2) ==2) && (tictactoe(3,2) == 0)
    tictactoe(3,2) = 1
elseif(tictactoe(1,2) == 2) && (tictactoe(3,2) ==2) && (tictactoe(2,2) == 0)
    tictactoe(2,2) = 1
elseif(tictactoe(2,2) ==2) && (tictactoe(3,2)== 2) && (tictactoe(1,2) == 0)
    tictactoe(1,2) =1
elseif(tictactoe(1,3) ==2) && (tictactoe(2,3) ==2) && (tictactoe(3,3)== 0)
    tictactoe(3,3)= 1
elseif(tictactoe(1,3) == 2) && (tictactoe(3,3) ==2) && (tictactoe(2,3) == 0)
    tictactoe(2,3) = 1
elseif(tictactoe(2,3) ==2) && (tictactoe(3,3) == 2) && (tictactoe(1,3) == 0)
    tictactoe(1,3) = 1
elseif (tictactoe(1,1) == 0) %There is no move to win or block, so the computer will play one of these moves, depeding on availablitily. 
    tictactoe(1,1) = 1
elseif(tictactoe(2,2) == 0)
    tictactoe(2,2) = 1
elseif(tictactoe(1,3) == 0)
    tictactoe(1,3) = 1
elseif(tictactoe(3,1) == 0)
    tictactoe(3,1) = 1
elseif(tictactoe(1,2) == 0)
    tictactoe(1,2) = 1
elseif(tictactoe(2,1) == 0)
    tictactoe(2,1) = 1
elseif(tictactoe(2,3) == 0)
    tictactoe(2,3) = 1
elseif(tictactoe(3,2) == 0)
    tictactoe(3,2) = 1
end

pause(2)
%Human's Turn 2
if((tictactoe(1,1) == 2)&& (tictactoe(1,2) == 2)&& (tictactoe(1,3) == 2)) || ((tictactoe(2,1) ==2) && (tictactoe(2,2) ==2) && (tictactoe(2,3) ==2)) || ((tictactoe(3,1)== 2) && (tictactoe(3,2)== 2)&& (tictactoe(3,3)== 2)) || ((tictactoe(1,1)== 2) && (tictactoe(2,1)== 2) && (tictactoe(3,1)== 2))|| ((tictactoe(1,2)== 2) && (tictactoe(2,2)== 2)&& (tictactoe(3,2)== 2)) || ((tictactoe(1,3) == 2) && (tictactoe(2,3)== 2) && (tictactoe(3,3)== 2)) || ((tictactoe(1,1) ==2) && (tictactoe(2,2) ==2) && (tictactoe(3,3)==2)) || ((tictactoe(1,3) ==2) && (tictactoe(2,2) ==2) && (tictactoe(3,1) ==2)) || ((tictactoe(1,1) == 1)&& (tictactoe(1,2) == 1)&& (tictactoe(1,3) == 1)) || ((tictactoe(2,1) ==1) && (tictactoe(2,2) ==1) && (tictactoe(2,3) ==1)) || ((tictactoe(3,1)== 1) && (tictactoe(3,2)== 1)&& (tictactoe(3,3)== 1)) || ((tictactoe(1,1)== 1) && (tictactoe(2,1)== 1) && (tictactoe(3,1)== 1))|| ((tictactoe(1,2)== 1) && (tictactoe(2,2)== 1)&& (tictactoe(3,2)== 1)) || ((tictactoe(1,3) == 1) && (tictactoe(2,3)== 1) && (tictactoe(3,3)== 1)) || ((tictactoe(1,1) ==1) && (tictactoe(2,2) ==1) && (tictactoe(3,3)==1)) || ((tictactoe(1,3) ==1) && (tictactoe(2,2) ==1) && (tictactoe(3,1) ==1))
    fprintf('wahoo\n') %Checks to see if the game is over
else %there is no winner yet, the computer prompts the player to make their move.
    row2 = input('row?');
    col2 = input('column?');
    if isempty(row2)
        fprintf(2, 'Yoohoo? Anybody there? You have to enter a move. I will let you try again.\n')
        row2 = input('row?');
        col2 = input('column?');
        if isempty(row2) || isempty(col2)|| tictactoe(row2,col2) == 2 || tictactoe(row2,col2) == 1 || (row2 > 3) || (row2 < 1) || (col2 > 3) || (col2 < 1)
        fprintf(2, 'Listen up, buster, I am not messing around.\n If you cannot play right, we will not play at all.\n ADIOS, HIPPOS.\n')
        pause(4)
        quit
        else
            tictactoe(row2,col2) =2;
        end
    elseif isempty(col2)
        fprintf(2, 'Yoohoo? Anybody there? You have to enter a move. I will let you try again.\n')
        row2 = input('row?');
        col2 = input('column?');
        if isempty(row2) || isempty(col2)|| tictactoe(row2,col2) == 2 || tictactoe(row2,col2) == 1 || (row2 > 3) || (row2 < 1) || (col2 > 3) || (col2 < 1)
        fprintf(2, 'Listen up, buster, I am not messing around.\n If you cannot play right, we will not play at all.\n ADIOS, HIPPOS.\n')
        pause(4)
        quit
        else
            tictactoe(row2,col2) =2;
        end
    elseif tictactoe(row2, col2) == 1 || tictactoe(row2,col2) == 2 %If move is same as previous computer's move or previous player's move
        fprintf(2, 'That spot is occupied, bro. Please try again.\n')
        row2 = input('row?');
        col2 = input('column?');
        tictactoe(row2, col2) = 2;
        if isempty(row2) || isempty(col2)|| tictactoe(row2,col2) == 2 || tictactoe(row2,col2) == 1 || (row2 > 3) || (row2 < 1) || (col2 > 3) || (col2 < 1)
            fprintf(2, 'I already went there! \nI do not play with cheaters. \nDUECES, GOOSES')
            pause(4)
            quit
        else
            tictactoe(row2,col2) = 2;
        end
    elseif (row2 > 3) || (row2 < 1) % If move is outside diminsions
        fprintf(2, 'Homie, that is not between 1 and 3. I will give you another try, maybe you will get it right this time. \n')
        row4 = input('row?');
        col4 = input('column?');
        if isempty(row2) || isempty(col2)|| tictactoe(row2,col2) == 2 || tictactoe(row2,col2) == 1 || (row2 > 3) || (row2 < 1) || (col2 > 3) || (col2 < 1)
            fprintf(2, 'I already told you, that is not a valid entry. \n I do not play with cheaters. \n GOODBYE, DRANGONFLY.\n')
            pause(4)
            quit
        else
            tictactoe(row2, col2) = 2;
        end
    elseif (col2 > 3) || (col2 < 1)
        fprintf(2, 'Homie, that is not between 1 and 3. I will give you another try, maybe you will get it right this time. \n')
        row4 = input('row?');
        col4 = input('column?');
        if isempty(row2) || isempty(col2)|| tictactoe(row2,col2) == 2 || tictactoe(row2,col2) == 1 || (row2 > 3) || (row2 < 1) || (col2 > 3) || (col2 < 1)
            fprintf(2, 'I already told you, that is not a valid entry. \n I do not play with cheaters. \n GOODBYE, DRANGONFLY.\n')
            pause(4)
            quit
        else
            tictactoe(row2, col2) = 2;
        end
    else
        tictactoe(row2, col2) = 2;
        pause(2)
        fprintf(2, 'Are you even going to make this a challenge?\n')
        pause(2)
    end
end


%Turn 3

%Computer's Turn 3
if((tictactoe(1,1) == 2)&& (tictactoe(1,2) == 2)&& (tictactoe(1,3) == 2)) || ((tictactoe(2,1) ==2) && (tictactoe(2,2) ==2) && (tictactoe(2,3) ==2)) || ((tictactoe(3,1)== 2) && (tictactoe(3,2)== 2)&& (tictactoe(3,3)== 2)) || ((tictactoe(1,1)== 2) && (tictactoe(2,1)== 2) && (tictactoe(3,1)== 2))|| ((tictactoe(1,2)== 2) && (tictactoe(2,2)== 2)&& (tictactoe(3,2)== 2)) || ((tictactoe(1,3) == 2) && (tictactoe(2,3)== 2) && (tictactoe(3,3)== 2)) || ((tictactoe(1,1) ==2) && (tictactoe(2,2) ==2) && (tictactoe(3,3)==2)) || ((tictactoe(1,3) ==2) && (tictactoe(2,2) ==2) && (tictactoe(3,1) ==2)) || ((tictactoe(1,1) == 1)&& (tictactoe(1,2) == 1)&& (tictactoe(1,3) == 1)) || ((tictactoe(2,1) ==1) && (tictactoe(2,2) ==1) && (tictactoe(2,3) ==1)) || ((tictactoe(3,1)== 1) && (tictactoe(3,2)== 1)&& (tictactoe(3,3)== 1)) || ((tictactoe(1,1)== 1) && (tictactoe(2,1)== 1) && (tictactoe(3,1)== 1))|| ((tictactoe(1,2)== 1) && (tictactoe(2,2)== 1)&& (tictactoe(3,2)== 1)) || ((tictactoe(1,3) == 1) && (tictactoe(2,3)== 1) && (tictactoe(3,3)== 1)) || ((tictactoe(1,1) ==1) && (tictactoe(2,2) ==1) && (tictactoe(3,3)==1)) || ((tictactoe(1,3) ==1) && (tictactoe(2,2) ==1) && (tictactoe(3,1) ==1))
    fprintf('wahoo\n')
elseif((tictactoe(1,1) == 2)&& (tictactoe(1,2) == 2)&& (tictactoe(1,3) == 2)) || ((tictactoe(2,1) ==2) && (tictactoe(2,2) ==2) && (tictactoe(2,3) ==2)) || ((tictactoe(3,1)== 2) && (tictactoe(3,2)== 2)&& (tictactoe(3,3)== 2)) || ((tictactoe(1,1)== 2) && (tictactoe(2,1)== 2) && (tictactoe(3,1)== 2))|| ((tictactoe(1,2)== 2) && (tictactoe(2,2)== 2)&& (tictactoe(3,2)== 2)) || ((tictactoe(1,3) == 2) && (tictactoe(2,3)== 2) && (tictactoe(3,3)== 2)) || ((tictactoe(1,1) ==2) && (tictactoe(2,2) ==2) && (tictactoe(3,3)==2)) || ((tictactoe(1,3) ==2) && (tictactoe(2,2) ==2) && (tictactoe(3,1) ==2))
    fprintf(2, 'You got lucky. Rematch?')
elseif ((tictactoe(1,1) == 1) && (tictactoe(3,3) == 1) && (tictactoe(2,2)== 0)) || ((tictactoe(1,3)== 1) && (tictactoe(3,1) == 1) && (tictactoe(2,2) == 0))
    tictactoe(2,2) = 1    
    fprintf(2, 'I WIN :) \n')
elseif(tictactoe(1,1) ==1) && (tictactoe(2,2) == 1) && (tictactoe(3,3) == 0)
    tictactoe(3,3) = 1
    fprintf(2, 'I WIN :) \n')
elseif(tictactoe(2,2) ==1) && (tictactoe(3,3)== 1) && (tictactoe(1,1) == 0)
    tictactoe(1,1) = 1
    fprintf(2, 'I WIN :) \n')
elseif(tictactoe(1,3) ==1) && (tictactoe(2,2)== 1) && (tictactoe(3,1)== 0)
    tictactoe(3,1) = 1
    fprintf(2, 'I WIN :) \n')
elseif(tictactoe(2,2) ==1) && (tictactoe(3,1) ==1) && (tictactoe(1,3) == 0)
    tictactoe(1,3)= 1
    fprintf(2, 'I WIN :) \n')
elseif (tictactoe(1,1) == 1) && (tictactoe(1,2) == 1) && (tictactoe(1,3) == 0)
    tictactoe(1,3) = 1
    fprintf(2, 'I WIN :) \n') 
elseif (tictactoe(1,1)== 1) && (tictactoe(1,3) == 1) && (tictactoe(1,2) == 0)
    tictactoe(1,2) = 1
    fprintf(2, 'I WIN :) \n')
elseif (tictactoe(1,2) == 1) && (tictactoe(1,3)== 1) && (tictactoe(1,1) == 0)
    tictactoe(1,1) = 1
    fprintf(2, 'I WIN :) \n')
elseif (tictactoe(1,1)== 1) && (tictactoe(2,1) == 1) && (tictactoe(3,1) == 0)
    tictactoe(3,1) = 1
    fprintf(2, 'I WIN :) \n')
elseif (tictactoe(1,1)== 1) && (tictactoe(3,1) == 1) && (tictactoe(2,1) == 0)
    tictactoe(2,1) = 1
    fprintf(2, 'I WIN :) \n')
elseif (tictactoe(2,1)== 1) && (tictactoe(3,1) == 1) && (tictactoe(1,1) == 0)
    tictactoe(1,1) = 1
    fprintf(2, 'I WIN :) \n')
elseif (tictactoe(2,1)== 1) && (tictactoe(2,2) == 1) && (tictactoe(2,3) == 0)
    tictactoe(2,3) = 1
    fprintf(2, 'I WIN :) \n')
elseif (tictactoe(2,2) == 1) && (tictactoe(2,3) == 1) && (tictactoe(2,1) == 0)
    tictactoe(2,1) = 1
    fprintf(2, 'I WIN :) \n')
elseif (tictactoe(2,1) == 1) && (tictactoe(2,3)== 1) && (tictactoe(2,2) == 0)
    tictactoe(2,2) = 1
    fprintf(2, 'I WIN :) \n')
elseif (tictactoe(3,1) == 1) && (tictactoe(3,2) == 1) && (tictactoe(3,3) == 0)
    tictactoe(3,3) = 1
    fprintf(2, 'I WIN :) \n')
elseif(tictactoe(3,2) == 1) && (tictactoe(3,3) == 1) && (tictactoe(3,1) == 0)
    tictactoe(3,1) = 1
    fprintf(2, 'I WIN :) \n')
elseif(tictactoe(3,1) == 1) && (tictactoe(3,3) == 1) && (tictactoe(3,2) == 0)
    tictactoe(3,2) = 1
    fprintf(2, 'I WIN :) \n')
elseif(tictactoe(1,2) == 1) && (tictactoe(2,2) ==1) && (tictactoe(3,2) == 0)
    tictactoe(3,2) = 1
    fprintf(2, 'I WIN :) \n')
elseif(tictactoe(1,2) == 1) && (tictactoe(3,2) ==1) && (tictactoe(2,2) == 0)
    tictactoe(2,2) = 1
    fprintf(2, 'I WIN :) \n')
elseif(tictactoe(2,2) ==1) && (tictactoe(3,2)== 1) && (tictactoe(1,2) == 0)
    tictactoe(1,2) =1
    fprintf(2, 'I WIN :) \n')
elseif(tictactoe(1,3) ==1) && (tictactoe(2,3) ==1) && (tictactoe(3,3)== 0)
    tictactoe(3,3)= 1
    fprintf(2, 'I WIN :) \n')
elseif(tictactoe(1,3) == 1) && (tictactoe(3,3) ==1) && (tictactoe(2,3) == 0)
    tictactoe(2,3) = 1
    fprintf(2, 'I WIN :) \n')
elseif(tictactoe(2,3) ==1) && (tictactoe(3,3) == 1) && (tictactoe(1,3) == 0)
    tictactoe(1,3) = 1
    fprintf(2, 'I WIN :) \n')    
elseif ((tictactoe(1,1) == 2) && (tictactoe(3,3) == 2) && (tictactoe(2,2)== 0)) || ((tictactoe(1,3)== 2) && (tictactoe(3,1) == 2) && (tictactoe(2,2) == 0))
    tictactoe(2,2) = 1    
elseif(tictactoe(1,1) ==2) && (tictactoe(2,2) == 2) && (tictactoe(3,3) == 0)
    tictactoe(3,3) = 1
elseif(tictactoe(2,2) ==2) && (tictactoe(3,3)== 2) && (tictactoe(1,1) == 0)
    tictactoe(1,1) = 1
elseif(tictactoe(1,3) ==2) && (tictactoe(2,2)== 2) && (tictactoe(3,1)== 0)
    tictactoe(3,1) = 1
elseif(tictactoe(2,2) ==2) && (tictactoe(3,1) ==2) && (tictactoe(1,3) == 0)
    tictactoe(1,3)= 1
elseif (tictactoe(1,1) == 2) && (tictactoe(1,2) == 2) && (tictactoe(1,3) == 0)
    tictactoe(1,3) = 1
elseif (tictactoe(1,1)== 2) && (tictactoe(1,3) == 2) && (tictactoe(1,2) == 0)
    tictactoe(1,2) = 1
elseif (tictactoe(1,2) == 2) && (tictactoe(1,3)== 2) && (tictactoe(1,1) == 0)
    tictactoe(1,1) = 1
elseif (tictactoe(1,1)== 2) && (tictactoe(2,1) == 2) && (tictactoe(3,1) == 0)
    tictactoe(3,1) = 1
elseif (tictactoe(1,1)== 2) && (tictactoe(3,1) == 2) && (tictactoe(2,1) == 0)
    tictactoe(2,1) = 1
elseif (tictactoe(2,1)== 2) && (tictactoe(3,1) == 2) && (tictactoe(1,1) == 0)
    tictactoe(1,1) = 1
elseif (tictactoe(2,1)== 2) && (tictactoe(2,2) == 2) && (tictactoe(2,3) == 0)
    tictactoe(2,3) = 1
elseif (tictactoe(2,2) == 2) && (tictactoe(2,3) == 2) && (tictactoe(2,1) == 0)
    tictactoe(2,1) = 1
elseif (tictactoe(2,1) == 2) && (tictactoe(2,3)== 2) && (tictactoe(2,2) == 0)
    tictactoe(2,2) = 1
elseif (tictactoe(3,1) == 2) && (tictactoe(3,2) == 2) && (tictactoe(3,3) == 0)
    tictactoe(3,3) = 1
elseif(tictactoe(3,2) == 2) && (tictactoe(3,3) == 2) && (tictactoe(3,1) == 0)
    tictactoe(3,1) = 1
elseif(tictactoe(3,1) == 2) && (tictactoe(3,3) == 2) && (tictactoe(3,2) == 0)
    tictactoe(3,2) = 1
elseif(tictactoe(1,2) == 2) && (tictactoe(2,2) ==2) && (tictactoe(3,2) == 0)
    tictactoe(3,2) = 1
elseif(tictactoe(1,2) == 2) && (tictactoe(3,2) ==2) && (tictactoe(2,2) == 0)
    tictactoe(2,2) = 1
elseif(tictactoe(2,2) ==2) && (tictactoe(3,2)== 2) && (tictactoe(1,2) == 0)
    tictactoe(1,2) =1
elseif(tictactoe(1,3) ==2) && (tictactoe(2,3) ==2) && (tictactoe(3,3)== 0)
    tictactoe(3,3)= 1
elseif(tictactoe(1,3) == 2) && (tictactoe(3,3) ==2) && (tictactoe(2,3) == 0)
    tictactoe(2,3) = 1
elseif(tictactoe(2,3) ==2) && (tictactoe(3,3) == 2) && (tictactoe(1,3) == 0)
    tictactoe(1,3) = 1
elseif (tictactoe(1,1) == 0)
    tictactoe(1,1) = 1
elseif(tictactoe(2,2) == 0)
    tictactoe(2,2) = 1
elseif(tictactoe(1,3) == 0)
    tictactoe(1,3) = 1
elseif(tictactoe(3,1) == 0)
    tictactoe(3,1) = 1
elseif(tictactoe(1,2) == 0)
    tictactoe(1,2) = 1
elseif(tictactoe(2,1) == 0)
    tictactoe(2,1) = 1
elseif(tictactoe(2,3) == 0)
    tictactoe(2,3) = 1
elseif(tictactoe(3,2) == 0)
    tictactoe(3,2) = 1
end

pause(2)

%Human's Turn 3
if((tictactoe(1,1) == 2)&& (tictactoe(1,2) == 2)&& (tictactoe(1,3) == 2)) || ((tictactoe(2,1) ==2) && (tictactoe(2,2) ==2) && (tictactoe(2,3) ==2)) || ((tictactoe(3,1)== 2) && (tictactoe(3,2)== 2)&& (tictactoe(3,3)== 2)) || ((tictactoe(1,1)== 2) && (tictactoe(2,1)== 2) && (tictactoe(3,1)== 2))|| ((tictactoe(1,2)== 2) && (tictactoe(2,2)== 2)&& (tictactoe(3,2)== 2)) || ((tictactoe(1,3) == 2) && (tictactoe(2,3)== 2) && (tictactoe(3,3)== 2)) || ((tictactoe(1,1) ==2) && (tictactoe(2,2) ==2) && (tictactoe(3,3)==2)) || ((tictactoe(1,3) ==2) && (tictactoe(2,2) ==2) && (tictactoe(3,1) ==2)) || ((tictactoe(1,1) == 1)&& (tictactoe(1,2) == 1)&& (tictactoe(1,3) == 1)) || ((tictactoe(2,1) ==1) && (tictactoe(2,2) ==1) && (tictactoe(2,3) ==1)) || ((tictactoe(3,1)== 1) && (tictactoe(3,2)== 1)&& (tictactoe(3,3)== 1)) || ((tictactoe(1,1)== 1) && (tictactoe(2,1)== 1) && (tictactoe(3,1)== 1))|| ((tictactoe(1,2)== 1) && (tictactoe(2,2)== 1)&& (tictactoe(3,2)== 1)) || ((tictactoe(1,3) == 1) && (tictactoe(2,3)== 1) && (tictactoe(3,3)== 1)) || ((tictactoe(1,1) ==1) && (tictactoe(2,2) ==1) && (tictactoe(3,3)==1)) || ((tictactoe(1,3) ==1) && (tictactoe(2,2) ==1) && (tictactoe(3,1) ==1))
    fprintf('wahoo\n')
else
    row3 = input('row?');
    col3 = input('column?');
    if tictactoe(row3,col3) == 2 || tictactoe(row3,col3) == 1 %If move is same as previous computer
        fprintf(2, 'Bro, use your eyes. That spot has been played. Please try again.\n')
        row3 = input('row?');
        col3 = input('column?');
        if isempty(row3) || isempty(col3)|| tictactoe(row3,col3) == 2 || tictactoe(row3,col3) == 1 || (row3 > 3) || (row3 < 1) || (col3 > 3) || (col3 < 1)
            fprintf(2, 'I told you, son, that spot is occupado! \nI do not play with cheaters. \n BYE BYE BUTTERFLY. \n')
            quit
        else
            tictactoe(row3,col3) = 2;
        end
    elseif isempty(row3)
        fprintf(2, 'You forgot to enter a number 1-3, go ahead and try again.\n')
        row3 = input('row?');
        col3 = input('column?');
        if isempty(row3) || isempty(col3)|| tictactoe(row3,col3) == 2 || tictactoe(row3,col3) == 1 || (row3 > 3) || (row3 < 1) || (col3 > 3) || (col3 < 1)
            fprintf(2, 'Your tomfoolery is not allowed. If you cannot play right, we will not play at all.\n TOODLE-OO KANGAROO.\n')
            pause(4)
            quit
        else
            tictactoe(row3,col3) =2;
        end
    elseif isempty(col3)
                fprintf(2, 'You forgot to enter a number 1-3, go ahead and try again.\n')
        row3 = input('row?');
        col3 = input('column?');
        if isempty(row3) || isempty(col3)|| tictactoe(row3,col3) == 2 || tictactoe(row3,col3) == 1 || (row3 > 3) || (row3 < 1) || (col3 > 3) || (col3 < 1)
            fprintf(2, 'Your tomfoolery is not allowed. If you cannot play right, we will not play at all.\n TOODLE-OO KANGAROO.\n')
            pause(4)
            quit
        else
            tictactoe(row3,col3) =2;
        end
    elseif (row3 > 3) || (row3 < 1) % If move is outside diminsions
        fprintf(2, 'That is not a valid entry. Please try again. \n')
        row3 = input('row?');
        col3 = input('column?');
        if isempty(row3) || isempty(col3)|| tictactoe(row3,col3) == 2 || tictactoe(row3,col3) == 1 || (row3 > 3) || (row3 < 1) || (col3 > 3) || (col3 < 1)
            fprintf(2, 'Obviously you are so scared that you have to resort to cheating.\n I have you know, I do not play with cheaters. n\ TIME TO GO, BUFFALO.\n')
            pause(4)
            quit
        else
            tictactoe(row3,col3) = 2;
        end
    elseif (col3 > 3) || (col3 < 1)
        fprintf(2, 'That is not a valid entry. Please try again. \n')
        row3 = input('row?');
        col3 = input('column?');
        if isempty(row3) || isempty(col3)|| tictactoe(row3,col3) == 2 || tictactoe(row3,col3) == 1 || (row3 > 3) || (row3 < 1) || (col3 > 3) || (col3 < 1)
            fprintf(2, 'Obviously you are so scared that you have to resort to cheating.\n I have you know, I do not play with cheaters. n\ TIME TO GO, BUFFALO.\n')
            pause(4)
            quit
        else
            tictactoe(row3,col3) = 2;
        end
    else
        tictactoe(row3, col3) = 2;
        pause(2)
        fprintf(2, 'Oh wow. You really have my circuitboards shaking with fear. I am so scared of your tictactoe abilities. \n \n \nNOT.\n')
        pause(2)
    end
end


%Turn 4

%Computer's Turn 4
if((tictactoe(1,1) == 2)&& (tictactoe(1,2) == 2)&& (tictactoe(1,3) == 2)) || ((tictactoe(2,1) ==2) && (tictactoe(2,2) ==2) && (tictactoe(2,3) ==2)) || ((tictactoe(3,1)== 2) && (tictactoe(3,2)== 2)&& (tictactoe(3,3)== 2)) || ((tictactoe(1,1)== 2) && (tictactoe(2,1)== 2) && (tictactoe(3,1)== 2))|| ((tictactoe(1,2)== 2) && (tictactoe(2,2)== 2)&& (tictactoe(3,2)== 2)) || ((tictactoe(1,3) == 2) && (tictactoe(2,3)== 2) && (tictactoe(3,3)== 2)) || ((tictactoe(1,1) ==2) && (tictactoe(2,2) ==2) && (tictactoe(3,3)==2)) || ((tictactoe(1,3) ==2) && (tictactoe(2,2) ==2) && (tictactoe(3,1) ==2)) || ((tictactoe(1,1) == 1)&& (tictactoe(1,2) == 1)&& (tictactoe(1,3) == 1)) || ((tictactoe(2,1) ==1) && (tictactoe(2,2) ==1) && (tictactoe(2,3) ==1)) || ((tictactoe(3,1)== 1) && (tictactoe(3,2)== 1)&& (tictactoe(3,3)== 1)) || ((tictactoe(1,1)== 1) && (tictactoe(2,1)== 1) && (tictactoe(3,1)== 1))|| ((tictactoe(1,2)== 1) && (tictactoe(2,2)== 1)&& (tictactoe(3,2)== 1)) || ((tictactoe(1,3) == 1) && (tictactoe(2,3)== 1) && (tictactoe(3,3)== 1)) || ((tictactoe(1,1) ==1) && (tictactoe(2,2) ==1) && (tictactoe(3,3)==1)) || ((tictactoe(1,3) ==1) && (tictactoe(2,2) ==1) && (tictactoe(3,1) ==1))
    fprintf('wahoo\n')
elseif((tictactoe(1,1) == 2)&& (tictactoe(1,2) == 2)&& (tictactoe(1,3) == 2)) || ((tictactoe(2,1) ==2) && (tictactoe(2,2) ==2) && (tictactoe(2,3) ==2)) || ((tictactoe(3,1)== 2) && (tictactoe(3,2)== 2)&& (tictactoe(3,3)== 2)) || ((tictactoe(1,1)== 2) && (tictactoe(2,1)== 2) && (tictactoe(3,1)== 2))|| ((tictactoe(1,2)== 2) && (tictactoe(2,2)== 2)&& (tictactoe(3,2)== 2)) || ((tictactoe(1,3) == 2) && (tictactoe(2,3)== 2) && (tictactoe(3,3)== 2)) || ((tictactoe(1,1) ==2) && (tictactoe(2,2) ==2) && (tictactoe(3,3)==2)) || ((tictactoe(1,3) ==2) && (tictactoe(2,2) ==2) && (tictactoe(3,1) ==2))
    fprintf(2, 'You win. woopty doo. Rematch?')
elseif ((tictactoe(1,1) == 1) && (tictactoe(3,3) == 1) && (tictactoe(2,2)== 0)) || ((tictactoe(1,3)== 1) && (tictactoe(3,1) == 1) && (tictactoe(2,2) == 0))
    tictactoe(2,2) = 1    
    fprintf(2, 'I WIN :) \n')
elseif(tictactoe(1,1) ==1) && (tictactoe(2,2) == 1) && (tictactoe(3,3) == 0)
    tictactoe(3,3) = 1
    fprintf(2, 'I WIN :) \n')
elseif(tictactoe(2,2) ==1) && (tictactoe(3,3)== 1) && (tictactoe(1,1) == 0)
    tictactoe(1,1) = 1
    fprintf(2, 'I WIN :) \n')
elseif(tictactoe(1,3) ==1) && (tictactoe(2,2)== 1) && (tictactoe(3,1)== 0)
    tictactoe(3,1) = 1
    fprintf(2, 'I WIN :) \n')
elseif(tictactoe(2,2) ==1) && (tictactoe(3,1) ==1) && (tictactoe(1,3) == 0)
    tictactoe(1,3)= 1
    fprintf(2, 'I WIN :) \n')
elseif (tictactoe(1,1) == 1) && (tictactoe(1,2) == 1) && (tictactoe(1,3) == 0)
    tictactoe(1,3) = 1
    fprintf(2, 'I WIN :) \n') 
elseif (tictactoe(1,1)== 1) && (tictactoe(1,3) == 1) && (tictactoe(1,2) == 0)
    tictactoe(1,2) = 1
    fprintf(2, 'I WIN :) \n')
elseif (tictactoe(1,2) == 1) && (tictactoe(1,3)== 1) && (tictactoe(1,1) == 0)
    tictactoe(1,1) = 1
    fprintf(2, 'I WIN :) \n')
elseif (tictactoe(1,1)== 1) && (tictactoe(2,1) == 1) && (tictactoe(3,1) == 0)
    tictactoe(3,1) = 1
    fprintf(2, 'I WIN :) \n')
elseif (tictactoe(1,1)== 1) && (tictactoe(3,1) == 1) && (tictactoe(2,1) == 0)
    tictactoe(2,1) = 1
    fprintf(2, 'I WIN :) \n')
elseif (tictactoe(2,1)== 1) && (tictactoe(3,1) == 1) && (tictactoe(1,1) == 0)
    tictactoe(1,1) = 1
    fprintf(2, 'I WIN :) \n')
elseif (tictactoe(2,1)== 1) && (tictactoe(2,2) == 1) && (tictactoe(2,3) == 0)
    tictactoe(2,3) = 1
    fprintf(2, 'I WIN :) \n')
elseif (tictactoe(2,2) == 1) && (tictactoe(2,3) == 1) && (tictactoe(2,1) == 0)
    tictactoe(2,1) = 1
    fprintf(2, 'I WIN :) \n')
elseif (tictactoe(2,1) == 1) && (tictactoe(2,3)== 1) && (tictactoe(2,2) == 0)
    tictactoe(2,2) = 1
    fprintf(2, 'I WIN :) \n')
elseif (tictactoe(3,1) == 1) && (tictactoe(3,2) == 1) && (tictactoe(3,3) == 0)
    tictactoe(3,3) = 1
    fprintf(2, 'I WIN :) \n')
elseif(tictactoe(3,2) == 1) && (tictactoe(3,3) == 1) && (tictactoe(3,1) == 0)
    tictactoe(3,1) = 1
    fprintf(2, 'I WIN :) \n')
elseif(tictactoe(3,1) == 1) && (tictactoe(3,3) == 1) && (tictactoe(3,2) == 0)
    tictactoe(3,2) = 1
    fprintf(2, 'I WIN :) \n')
elseif(tictactoe(1,2) == 1) && (tictactoe(2,2) ==1) && (tictactoe(3,2) == 0)
    tictactoe(3,2) = 1
    fprintf(2, 'I WIN :) \n')
elseif(tictactoe(1,2) == 1) && (tictactoe(3,2) ==1) && (tictactoe(2,2) == 0)
    tictactoe(2,2) = 1
    fprintf(2, 'I WIN :) \n')
elseif(tictactoe(2,2) ==1) && (tictactoe(3,2)== 1) && (tictactoe(1,2) == 0)
    tictactoe(1,2) =1
    fprintf(2, 'I WIN :) \n')
elseif(tictactoe(1,3) ==1) && (tictactoe(2,3) ==1) && (tictactoe(3,3)== 0)
    tictactoe(3,3)= 1
    fprintf(2, 'I WIN :) \n')
elseif(tictactoe(1,3) == 1) && (tictactoe(3,3) ==1) && (tictactoe(2,3) == 0)
    tictactoe(2,3) = 1
    fprintf(2, 'I WIN :) \n')
elseif(tictactoe(2,3) ==1) && (tictactoe(3,3) == 1) && (tictactoe(1,3) == 0)
    tictactoe(1,3) = 1
    fprintf(2, 'I WIN :)\n')    
elseif ((tictactoe(1,1) == 2) && (tictactoe(3,3) == 2) && (tictactoe(2,2)== 0)) || ((tictactoe(1,3)== 2) && (tictactoe(3,1) == 2) && (tictactoe(2,2) == 0))
    tictactoe(2,2) = 1    
elseif(tictactoe(1,1) ==2) && (tictactoe(2,2) == 2) && (tictactoe(3,3) == 0)
    tictactoe(3,3) = 1
elseif(tictactoe(2,2) ==2) && (tictactoe(3,3)== 2) && (tictactoe(1,1) == 0)
    tictactoe(1,1) = 1
elseif(tictactoe(1,3) ==2) && (tictactoe(2,2)== 2) && (tictactoe(3,1)== 0)
    tictactoe(3,1) = 1
elseif(tictactoe(2,2) ==2) && (tictactoe(3,1) ==2) && (tictactoe(1,3) == 0)
    tictactoe(1,3)= 1
elseif (tictactoe(1,1) == 2) && (tictactoe(1,2) == 2) && (tictactoe(1,3) == 0)
    tictactoe(1,3) = 1
elseif (tictactoe(1,1)== 2) && (tictactoe(1,3) == 2) && (tictactoe(1,2) == 0)
    tictactoe(1,2) = 1
elseif (tictactoe(1,2) == 2) && (tictactoe(1,3)== 2) && (tictactoe(1,1) == 0)
    tictactoe(1,1) = 1
elseif (tictactoe(1,1)== 2) && (tictactoe(2,1) == 2) && (tictactoe(3,1) == 0)
    tictactoe(3,1) = 1
elseif (tictactoe(1,1)== 2) && (tictactoe(3,1) == 2) && (tictactoe(2,1) == 0)
    tictactoe(2,1) = 1
elseif (tictactoe(2,1)== 2) && (tictactoe(3,1) == 2) && (tictactoe(1,1) == 0)
    tictactoe(1,1) = 1
elseif (tictactoe(2,1)== 2) && (tictactoe(2,2) == 2) && (tictactoe(2,3) == 0)
    tictactoe(2,3) = 1
elseif (tictactoe(2,2) == 2) && (tictactoe(2,3) == 2) && (tictactoe(2,1) == 0)
    tictactoe(2,1) = 1
elseif (tictactoe(2,1) == 2) && (tictactoe(2,3)== 2) && (tictactoe(2,2) == 0)
    tictactoe(2,2) = 1
elseif (tictactoe(3,1) == 2) && (tictactoe(3,2) == 2) && (tictactoe(3,3) == 0)
    tictactoe(3,3) = 1
elseif(tictactoe(3,2) == 2) && (tictactoe(3,3) == 2) && (tictactoe(3,1) == 0)
    tictactoe(3,1) = 1
elseif(tictactoe(3,1) == 2) && (tictactoe(3,3) == 2) && (tictactoe(3,2) == 0)
    tictactoe(3,2) = 1
elseif(tictactoe(1,2) == 2) && (tictactoe(2,2) ==2) && (tictactoe(3,2) == 0)
    tictactoe(3,2) = 1
elseif(tictactoe(1,2) == 2) && (tictactoe(3,2) ==2) && (tictactoe(2,2) == 0)
    tictactoe(2,2) = 1
elseif(tictactoe(2,2) ==2) && (tictactoe(3,2)== 2) && (tictactoe(1,2) == 0)
    tictactoe(1,2) =1
elseif(tictactoe(1,3) ==2) && (tictactoe(2,3) ==2) && (tictactoe(3,3)== 0)
    tictactoe(3,3)= 1
elseif(tictactoe(1,3) == 2) && (tictactoe(3,3) ==2) && (tictactoe(2,3) == 0)
    tictactoe(2,3) = 1
elseif(tictactoe(2,3) ==2) && (tictactoe(3,3) == 2) && (tictactoe(1,3) == 0)
    tictactoe(1,3) = 1
elseif (tictactoe(1,1) == 0)
    tictactoe(1,1) = 1
elseif(tictactoe(2,2) == 0)
    tictactoe(2,2) = 1
elseif(tictactoe(1,3) == 0)
    tictactoe(1,3) = 1
elseif(tictactoe(3,1) == 0)
    tictactoe(3,1) = 1
elseif(tictactoe(1,2) == 0)
    tictactoe(1,2) = 1
elseif(tictactoe(2,1) == 0)
    tictactoe(2,1) = 1
elseif(tictactoe(2,3) == 0)
    tictactoe(2,3) = 1
elseif(tictactoe(3,2) == 0)
    tictactoe(3,2) = 1
end

pause(2)

%Human's Turn 4
if((tictactoe(1,1) == 2)&& (tictactoe(1,2) == 2)&& (tictactoe(1,3) == 2)) || ((tictactoe(2,1) ==2) && (tictactoe(2,2) ==2) && (tictactoe(2,3) ==2)) || ((tictactoe(3,1)== 2) && (tictactoe(3,2)== 2)&& (tictactoe(3,3)== 2)) || ((tictactoe(1,1)== 2) && (tictactoe(2,1)== 2) && (tictactoe(3,1)== 2))|| ((tictactoe(1,2)== 2) && (tictactoe(2,2)== 2)&& (tictactoe(3,2)== 2)) || ((tictactoe(1,3) == 2) && (tictactoe(2,3)== 2) && (tictactoe(3,3)== 2)) || ((tictactoe(1,1) ==2) && (tictactoe(2,2) ==2) && (tictactoe(3,3)==2)) || ((tictactoe(1,3) ==2) && (tictactoe(2,2) ==2) && (tictactoe(3,1) ==2)) || ((tictactoe(1,1) == 1)&& (tictactoe(1,2) == 1)&& (tictactoe(1,3) == 1)) || ((tictactoe(2,1) ==1) && (tictactoe(2,2) ==1) && (tictactoe(2,3) ==1)) || ((tictactoe(3,1)== 1) && (tictactoe(3,2)== 1)&& (tictactoe(3,3)== 1)) || ((tictactoe(1,1)== 1) && (tictactoe(2,1)== 1) && (tictactoe(3,1)== 1))|| ((tictactoe(1,2)== 1) && (tictactoe(2,2)== 1)&& (tictactoe(3,2)== 1)) || ((tictactoe(1,3) == 1) && (tictactoe(2,3)== 1) && (tictactoe(3,3)== 1)) || ((tictactoe(1,1) ==1) && (tictactoe(2,2) ==1) && (tictactoe(3,3)==1)) || ((tictactoe(1,3) ==1) && (tictactoe(2,2) ==1) && (tictactoe(3,1) ==1))
    fprintf('wahoo\n')
else
    row4 = input('row?');
    col4 = input('column?');
    if isempty(row4)
        fprintf(2, 'Yo, you forgot to enter a move.\n')
        row4 = input('row?');
        col4 = input('column?');
        if isempty(row4) || isempty(col4)|| tictactoe(row4,col4) == 2 || tictactoe(row4,col4) == 1 || (row4 > 3) || (row4 < 1) || (col4 > 3) || (col4 < 1)
        fprintf(2, 'Stop that nonsense. If you cannot play right, we will not play at all.\n TAKE CARE, POLAR BEAR.\n')
        pause(4)
        quit
        else
            tictactoe(row4,col4) = 2;
        end
    elseif isempty(col4)
        fprintf(2, 'Yo, you forgot to enter a move.\n')
        row4 = input('row?');
        col4 = input('column?');
        if isempty(row4) || isempty(col4)|| tictactoe(row4,col4) == 2 || tictactoe(row4,col4) == 1 || (row4 > 3) || (row4 < 1) || (col4 > 3) || (col4 < 1)
        fprintf(2, 'Stop that nonsense. If you cannot play right, we will not play at all.\n TAKE CARE, POLAR BEAR.\n')
        pause(4)
        quit
        else
            tictactoe(row4,col4) = 2;
        end
    elseif tictactoe(row4,col4) == 2 || tictactoe(row4,col4) == 1 %If move is same as previous computer or player
        fprintf(2, 'That spot has already been selected. Please try again.\n')
        row4 = input('row?');
        col4 = input('column?');
        if isempty(row4) || isempty(col4)|| tictactoe(row4,col4) == 2 || tictactoe(row4,col4) == 1 || (row4 > 3) || (row4 < 1) || (col4 > 3) || (col4 < 1)
            fprintf(2, 'Your shenanigans will not be tolerated. \nI do not play with cheaters. \n HANG LOOSE, MONGOOSE')
            pause(4)
            quit
        else
            tictactoe(row4,col4) = 2;
        end
    elseif (row4 > 3) || (row4 < 1) % If move is outside diminsions
        fprintf(2, 'That is not a valid entry. Please try again. \n')
        row4 = input('row?');
        col4 = input('column?');
        if isempty(row4) || isempty(col4)|| tictactoe(row4,col4) == 2 || tictactoe(row4,col4) == 1 || (row4 > 3) || (row4 < 1) || (col4 > 3) || (col4 < 1)
            fprintf(2, 'I already told you, that is not a valid entry. \n I do not play with cheaters. n\ GOTTA BOLT, LITTLE COLT.\n')
            pause(4)
            quit
        else
            tictactoe(row4, col4) = 2;
        end
    elseif (col4 > 3) || (col4 < 1)
        fprintf(2, 'That is not a valid entry. Please try again. \n')
        row4 = input('row?');
        col4 = input('column?');
        if isempty(row4) || isempty(col4)|| tictactoe(row4,col4) == 2 || tictactoe(row4,col4) == 1 || (row4 > 3) || (row4 < 1) || (col4 > 3) || (col4 < 1)
            fprintf(2, 'I already told you, that is not a valid entry. \n I do not play with cheaters. n\ GOTTA BOLT, LITTLE COLT.\n')
            pause(4)
            quit
        else
            tictactoe(row4, col4) = 2;
        end
    else
        tictactoe(row4, col4) = 2;
    end
end

%Turn 5

%Computer's Turn 5 The last play. The computer will check all possible ways
%to win, if there are no wins, either side, then the game ends in a
%catsratch
if((tictactoe(1,1) == 2)&& (tictactoe(1,2) == 2)&& (tictactoe(1,3) == 2)) || ((tictactoe(2,1) ==2) && (tictactoe(2,2) ==2) && (tictactoe(2,3) ==2)) || ((tictactoe(3,1)== 2) && (tictactoe(3,2)== 2)&& (tictactoe(3,3)== 2)) || ((tictactoe(1,1)== 2) && (tictactoe(2,1)== 2) && (tictactoe(3,1)== 2))|| ((tictactoe(1,2)== 2) && (tictactoe(2,2)== 2)&& (tictactoe(3,2)== 2)) || ((tictactoe(1,3) == 2) && (tictactoe(2,3)== 2) && (tictactoe(3,3)== 2)) || ((tictactoe(1,1) ==2) && (tictactoe(2,2) ==2) && (tictactoe(3,3)==2)) || ((tictactoe(1,3) ==2) && (tictactoe(2,2) ==2) && (tictactoe(3,1) ==2)) || ((tictactoe(1,1) == 1)&& (tictactoe(1,2) == 1)&& (tictactoe(1,3) == 1)) || ((tictactoe(2,1) ==1) && (tictactoe(2,2) ==1) && (tictactoe(2,3) ==1)) || ((tictactoe(3,1)== 1) && (tictactoe(3,2)== 1)&& (tictactoe(3,3)== 1)) || ((tictactoe(1,1)== 1) && (tictactoe(2,1)== 1) && (tictactoe(3,1)== 1))|| ((tictactoe(1,2)== 1) && (tictactoe(2,2)== 1)&& (tictactoe(3,2)== 1)) || ((tictactoe(1,3) == 1) && (tictactoe(2,3)== 1) && (tictactoe(3,3)== 1)) || ((tictactoe(1,1) ==1) && (tictactoe(2,2) ==1) && (tictactoe(3,3)==1)) || ((tictactoe(1,3) ==1) && (tictactoe(2,2) ==1) && (tictactoe(3,1) ==1))
    fprintf('wahoo\n')
    if((tictactoe(1,1) == 2)&& (tictactoe(1,2) == 2)&& (tictactoe(1,3) == 2)) || ((tictactoe(2,1) ==2) && (tictactoe(2,2) ==2) && (tictactoe(2,3) ==2)) || ((tictactoe(3,1)== 2) && (tictactoe(3,2)== 2)&& (tictactoe(3,3)== 2)) || ((tictactoe(1,1)== 2) && (tictactoe(2,1)== 2) && (tictactoe(3,1)== 2))|| ((tictactoe(1,2)== 2) && (tictactoe(2,2)== 2)&& (tictactoe(3,2)== 2)) || ((tictactoe(1,3) == 2) && (tictactoe(2,3)== 2) && (tictactoe(3,3)== 2)) || ((tictactoe(1,1) ==2) && (tictactoe(2,2) ==2) && (tictactoe(3,3)==2)) || ((tictactoe(1,3) ==2) && (tictactoe(2,2) ==2) && (tictactoe(3,1) ==2))
    fprintf(2, 'You win. Good for you. Rematch?')
    end
elseif ((tictactoe(1,1) == 1) && (tictactoe(3,3) == 1) && (tictactoe(2,2)== 0)) || ((tictactoe(1,3)== 1) && (tictactoe(3,1) == 1) && (tictactoe(2,2) == 0))
    tictactoe(2,2) = 1    
    fprintf(2, 'I WIN :) \n')
elseif(tictactoe(1,1) ==1) && (tictactoe(2,2) == 1) && (tictactoe(3,3) == 0)
    tictactoe(3,3) = 1
    fprintf(2, 'I WIN :) \n')
elseif(tictactoe(2,2) ==1) && (tictactoe(3,3)== 1) && (tictactoe(1,1) == 0)
    tictactoe(1,1) = 1
    fprintf(2, 'I WIN :) \n')
elseif(tictactoe(1,3) ==1) && (tictactoe(2,2)== 1) && (tictactoe(3,1)== 0)
    tictactoe(3,1) = 1
    fprintf(2, 'I WIN :) \n')
elseif(tictactoe(2,2) ==1) && (tictactoe(3,1) ==1) && (tictactoe(1,3) == 0)
    tictactoe(1,3)= 1
    fprintf(2, 'I WIN :) \n')
elseif (tictactoe(1,1) == 1) && (tictactoe(1,2) == 1) && (tictactoe(1,3) == 0)
    tictactoe(1,3) = 1
    fprintf(2, 'I WIN :) \n')
elseif (tictactoe(1,1)== 1) && (tictactoe(1,3) == 1) && (tictactoe(1,2) == 0)
    tictactoe(1,2) = 1
    fprintf(2, 'I WIN :) \n')
elseif (tictactoe(1,2) == 1) && (tictactoe(1,3)== 1) && (tictactoe(1,1) == 0)
    tictactoe(1,1) = 1
    fprintf(2, 'I WIN :) \n')
elseif (tictactoe(1,1)== 1) && (tictactoe(2,1) == 1) && (tictactoe(3,1) == 0)
    tictactoe(3,1) = 1
    fprintf(2, 'I WIN :) \n')
elseif (tictactoe(1,1)== 1) && (tictactoe(3,1) == 1) && (tictactoe(2,1) == 0)
    tictactoe(2,1) = 1
    fprintf(2, 'I WIN :) \n')
elseif (tictactoe(2,1)== 1) && (tictactoe(3,1) == 1) && (tictactoe(1,1) == 0)
    tictactoe(1,1) = 1
    fprintf(2, 'I WIN :) \n')
elseif (tictactoe(2,1)== 1) && (tictactoe(2,2) == 1) && (tictactoe(2,3) == 0)
    tictactoe(2,3) = 1
    fprintf(2, 'I WIN :) \n')
elseif (tictactoe(2,2) == 1) && (tictactoe(2,3) == 1) && (tictactoe(2,1) == 0)
    tictactoe(2,1) = 1
    fprintf(2, 'I WIN :) \n')
elseif (tictactoe(2,1) == 1) && (tictactoe(2,3)== 1) && (tictactoe(2,2) == 0)
    tictactoe(2,2) = 1
    fprintf(2, 'I WIN :) \n')
elseif (tictactoe(3,1) == 1) && (tictactoe(3,2) == 1) && (tictactoe(3,3) == 0)
    tictactoe(3,3) = 1
    fprintf(2, 'I WIN :) \n')
elseif(tictactoe(3,2) == 1) && (tictactoe(3,3) == 1) && (tictactoe(3,1) == 0)
    tictactoe(3,1) = 1
    fprintf(2, 'I WIN :) \n')
elseif(tictactoe(3,1) == 1) && (tictactoe(3,3) == 1) && (tictactoe(3,2) == 0)
    tictactoe(3,2) = 1
    fprintf(2, 'I WIN :) \n')
elseif(tictactoe(1,2) == 1) && (tictactoe(2,2) ==1) && (tictactoe(3,2) == 0)
    tictactoe(3,2) = 1
    fprintf(2, 'I WIN :) \n')
elseif(tictactoe(1,2) == 1) && (tictactoe(3,2) ==1) && (tictactoe(2,2) == 0)
    tictactoe(2,2) = 1
    fprintf(2, 'I WIN :) \n')
elseif(tictactoe(2,2) ==1) && (tictactoe(3,2)== 1) && (tictactoe(1,2) == 0)
    tictactoe(1,2) =1
    fprintf(2, 'I WIN :) \n')
elseif(tictactoe(1,3) ==1) && (tictactoe(2,3) ==1) && (tictactoe(3,3)== 0)
    tictactoe(3,3)= 1
    fprintf(2, 'I WIN :) \n')
elseif(tictactoe(1,3) == 1) && (tictactoe(3,3) ==1) && (tictactoe(2,3) == 0)
    tictactoe(2,3) = 1
    fprintf(2, 'I WIN :) \n')
elseif(tictactoe(2,3) ==1) && (tictactoe(3,3) == 1) && (tictactoe(1,3) == 0)
    tictactoe(1,3) = 1
    fprintf(2, 'I WIN :) \n')
elseif ((tictactoe(1,1) == 2) && (tictactoe(3,3) == 2) && (tictactoe(2,2)== 0)) || ((tictactoe(1,3)== 2) && (tictactoe(3,1) == 2) && (tictactoe(2,2) == 0))
    tictactoe(2,2) = 1
    fprintf(2, 'CATSCRATCH! \n')
elseif(tictactoe(1,1) ==2) && (tictactoe(2,2) == 2) && (tictactoe(3,3) == 0)
    tictactoe(3,3) = 1
    fprintf(2, 'CATSCRATCH! \n')
elseif(tictactoe(2,2) ==2) && (tictactoe(3,3)== 2) && (tictactoe(1,1) == 0)
    tictactoe(1,1) = 1
    fprintf(2, 'CATSCRATCH! \n')
elseif(tictactoe(1,3) ==2) && (tictactoe(2,2)== 2) && (tictactoe(3,1)== 0)
    tictactoe(3,1) = 1
    fprintf(2, 'CATSCRATCH! \n')
elseif(tictactoe(2,2) ==2) && (tictactoe(3,1) ==2) && (tictactoe(1,3) == 0)
    tictactoe(1,3)= 1
    fprintf(2, 'CATSCRATCH! \n')
elseif (tictactoe(1,1) == 2) && (tictactoe(1,2) == 2) && (tictactoe(1,3) == 0)
    tictactoe(1,3) = 1
elseif (tictactoe(1,1)== 2) && (tictactoe(1,3) == 2) && (tictactoe(1,2) == 0)
    tictactoe(1,2) = 1
    fprintf(2, 'CATSCRATCH! \n')
elseif (tictactoe(1,2) == 2) && (tictactoe(1,3)== 2) && (tictactoe(1,1) == 0)
    tictactoe(1,1) = 1
    fprintf(2, 'CATSCRATCH! \n')
elseif (tictactoe(1,1)== 2) && (tictactoe(2,1) == 2) && (tictactoe(3,1) == 0)
    tictactoe(3,1) = 1
    fprintf(2, 'CATSCRATCH! \n')
elseif (tictactoe(1,1)== 2) && (tictactoe(3,1) == 2) && (tictactoe(2,1) == 0)
    tictactoe(2,1) = 1
    fprintf(2, 'CATSCRATCH! \n')
elseif (tictactoe(2,1)== 2) && (tictactoe(3,1) == 2) && (tictactoe(1,1) == 0)
    tictactoe(1,1) = 1
    fprintf(2, 'CATSCRATCH! \n')
elseif (tictactoe(2,1)== 2) && (tictactoe(2,2) == 2) && (tictactoe(2,3) == 0)
    tictactoe(2,3) = 1
    fprintf(2, 'CATSCRATCH! \n')
elseif (tictactoe(2,2) == 2) && (tictactoe(2,3) == 2) && (tictactoe(2,1) == 0)
    tictactoe(2,1) = 1
    fprintf(2, 'CATSCRATCH! \n')
elseif (tictactoe(2,1) == 2) && (tictactoe(2,3)== 2) && (tictactoe(2,2) == 0)
    tictactoe(2,2) = 1
    fprintf(2, 'CATSCRATCH! \n')
elseif (tictactoe(3,1) == 2) && (tictactoe(3,2) == 2) && (tictactoe(3,3) == 0)
    tictactoe(3,3) = 1
    fprintf(2, 'CATSCRATCH! \n')
elseif(tictactoe(3,2) == 2) && (tictactoe(3,3) == 2) && (tictactoe(3,1) == 0)
    tictactoe(3,1) = 1
    fprintf(2, 'CATSCRATCH! \n')
elseif(tictactoe(3,1) == 2) && (tictactoe(3,3) == 2) && (tictactoe(3,2) == 0)
    tictactoe(3,2) = 1
    fprintf(2, 'CATSCRATCH! \n')
elseif(tictactoe(1,2) == 2) && (tictactoe(2,2) ==2) && (tictactoe(3,2) == 0)
    tictactoe(3,2) = 1
    fprintf(2, 'CATSCRATCH! \n')
elseif(tictactoe(1,2) == 2) && (tictactoe(3,2) ==2) && (tictactoe(2,2) == 0)
    tictactoe(2,2) = 1
    fprintf(2, 'CATSCRATCH! \n')
elseif(tictactoe(2,2) ==2) && (tictactoe(3,2)== 2) && (tictactoe(1,2) == 0)
    tictactoe(1,2) =1
    fprintf(2, 'CATSCRATCH! \n')
elseif(tictactoe(1,3) ==2) && (tictactoe(2,3) ==2) && (tictactoe(3,3)== 0)
    tictactoe(3,3)= 1
    fprintf(2, 'CATSCRATCH! \n')
elseif(tictactoe(1,3) == 2) && (tictactoe(3,3) ==2) && (tictactoe(2,3) == 0)
    tictactoe(2,3) = 1
    fprintf(2, 'CATSCRATCH! \n')
elseif(tictactoe(2,3) ==2) && (tictactoe(3,3) == 2) && (tictactoe(1,3) == 0)
    tictactoe(1,3) = 1
    fprintf(2, 'CATSCRATCH! \n')
elseif (tictactoe(1,1) == 0)
    tictactoe(1,1) = 1
    fprintf(2, 'CATSCRATCH! \n')
elseif(tictactoe(2,2) == 0)
    tictactoe(2,2) = 1
    fprintf(2, 'CATSCRATCH! \n')
elseif(tictactoe(1,3) == 0)
    tictactoe(1,3) = 1
    fprintf(2, 'CATSCRATCH! \n')
elseif(tictactoe(3,1) == 0)
    tictactoe(3,1) = 1
    fprintf(2, 'CATSCRATCH! \n')
elseif(tictactoe(1,2) == 0)
    tictactoe(1,2) = 1
    fprintf(2, 'CATSCRATCH! \n')
elseif(tictactoe(2,1) == 0)
    tictactoe(2,1) = 1
    fprintf(2, 'CATSCRATCH! \n')
elseif(tictactoe(2,3) == 0)
    tictactoe(2,3) = 1
    fprintf(2, 'CATSCRATCH! \n')
elseif(tictactoe(3,2) == 0)
    tictactoe(3,2) = 1
    fprintf(2, 'CATSCRATCH! \n')
end

pause(4)
fprintf(2, 'THAT IS THE END, MY FRIEND.\nHit Run To Play Again.\n')
