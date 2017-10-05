%MatLab Assignment 4: Tic Tac Toe WITH LOOPS!
%#LoopDeLoopAndPullAndYourShoesAreLookingCool
%Ashley Moulder, 9/30/2017
%This code allows a person to play Tic Tac Toe against a computer.
%Using a while loop, the game can be infinate if the user chooses to continue to
%play. The game itself uses a for loop, and allows the player 4 turns to
%try to beat the computer (becuase the computer goes first, it has five
%turns). The computer gives the player a choice to play a game, if the user
%selects yes, the computer then gives the rules and makes the first turn.
%It then prompts the player to go. The computer will then determine and make 
%the best possible move using a series of if else statments. This will continue 
%until there is a winner or the game ends in a tie. The computer will then prompt the
%players if they would like to play again. If yes, the computer starts from
%the beginning, skipping over the instructions.

clear
clc
fprintf(2, 'Want to play a game? \n')
pause(2)
newGame = input('Enter "1" for Yes, Enter "2" If you do NOT wish to humiliate yourself:'); %Prompts the player to choose if they want to play
if (newGame == 1) %Starts game with instructions
    fprintf(2, 'Wuzzzz uuuuuup. My Name is MATLAB\n')
    pause(1)
    fprintf(2, 'And the name of the game is Tic Tac Toe\n')
    pause(3)
    fprintf (2,'Here is how this ish is gunna go down.\nI will be 1, You will be 2.\n\nYou will be prompted to enter Row (across) position (1, 2, or 3) first. \n\nThen you will enter the Column (up & down) position(1, 2, or 3)\n \nHere is the board.')
    pause(7)
else %If anything but '1' and the computer gets sassy. It doesn't like to be turned on and not played with. 
    fprintf(2, 'Uhhhhh, Okay bro?\n')
    pause(1)
    fprintf(2, 'You are not any fun at all.\n')
    pause(1)
    fprintf(2, 'Like, why would start this game if you did not want to play???\n')
    pause(1)
    fprintf(2, 'Whatever. Be that way.')
    pause(1)
    fprintf(2, '\n\n TOODLE-OO KANGAROO\n\n')
end

while (newGame == 1) %If the player at the end of the game chooses '1', the game will restart from this point, skipping the instructions
    tictactoe = zeros(3,3) %Displays a blank board
    pause(3)
    fprintf (2, 'I will go first\n')
    pause(1)
    tictactoe(3,3)= 1 %Computer makes first move
    fprintf(2, 'GET READY TO RUMBLE!\n\n')
    pause(2)

    turns = (1:4); %The player is given 4 total turns per game. The computer goes first, so it gets 5 total

    for i = 1:length(turns) %will end after 4 times
        row = input('row?'); %player is prompted to select a row
        while isempty(row) %If the player leaves this spot blank, it prompts them to try again
            fprintf(2, 'Yoohoo? Anybody there? You have to enter a move. I will let you try again.\n')
            row = imput('row?');
        end
        while ((row > 3) || (row < 1)) %If the player selects a row outside of the dimensions of the board, the computer will prompt the player to try again.
            fprintf(2, 'That is not a valid entry, the rules were pretty specific, pick a row 1, 2, or 3 and then pick a column 1, 2, or 3. Please try again. \n')
            row = input('row?');
        end
        
        col = input('column?'); %player is prompted to select a column
        while isempty(col)%If the player leaves this spot blank, it prompts them to try again
            fprintf(2, 'Yo, you forgot to enter a move.\n')
            col = input('column?');
        end
        while ((col > 3) || (col < 1))%If the player selects a column outside of the dimensions of the board, the computer will prompt the player to try again.
            fprintf(2, 'Honestly, when you do not play by the rules, you are just wasting your own time. I can do this all day. It was what I was programmed to do.\n')
            col = input('column?');
        end
              
        while (tictactoe(row, col) == 2) || (tictactoe(row, col) == 1) %If the player selects a move that has already been played, the computer will prompt them to try again.
            fprintf(2, 'Yo, that space is occupado. Try agian.\n')
            row = input('row?');
            col = input('column?');
        end
        
        tictactoe(row, col) = 2; %The player's move is added to the board.
        pause(2)
        %Computer's Turn
        %Will check all possible moves to win or to block the player in
        %order to make the most advantageous move.
        if((tictactoe(1,1) == 2)&& (tictactoe(1,2) == 2)&& (tictactoe(1,3) == 2)) || ((tictactoe(2,1) ==2) && (tictactoe(2,2) ==2) && (tictactoe(2,3) ==2)) || ((tictactoe(3,1)== 2) && (tictactoe(3,2)== 2)&& (tictactoe(3,3)== 2)) || ((tictactoe(1,1)== 2) && (tictactoe(2,1)== 2) && (tictactoe(3,1)== 2))|| ((tictactoe(1,2)== 2) && (tictactoe(2,2)== 2)&& (tictactoe(3,2)== 2)) || ((tictactoe(1,3) == 2) && (tictactoe(2,3)== 2) && (tictactoe(3,3)== 2)) || ((tictactoe(1,1) ==2) && (tictactoe(2,2) ==2) && (tictactoe(3,3)==2)) || ((tictactoe(1,3) ==2) && (tictactoe(2,2) ==2) && (tictactoe(3,1) ==2))
            fprintf(2, 'You got lucky. Rematch?') %checks to see if the player has three in a row
            break
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
        
        if((tictactoe(1,1) == 1)&& (tictactoe(1,2) == 1)&& (tictactoe(1,3) == 1)) || ((tictactoe(2,1) ==1) && (tictactoe(2,2) ==1) && (tictactoe(2,3) ==1)) || ((tictactoe(3,1)== 1) && (tictactoe(3,2)== 1)&& (tictactoe(3,3)== 1)) || ((tictactoe(1,1)== 1) && (tictactoe(2,1)== 1) && (tictactoe(3,1)== 1))|| ((tictactoe(1,2)== 1) && (tictactoe(2,2)== 1)&& (tictactoe(3,2)== 1)) || ((tictactoe(1,3) == 1) && (tictactoe(2,3)== 1) && (tictactoe(3,3)== 1)) || ((tictactoe(1,1) ==1) && (tictactoe(2,2) ==1) && (tictactoe(3,3)==1)) || ((tictactoe(1,3) ==1) && (tictactoe(2,2) ==1) && (tictactoe(3,1) ==1))
            break %if the computer has won, will break out of the for loop
        end
    end
    if ((tictactoe(1,1) ~= 0) && (tictactoe(1,2) ~= 0) && (tictactoe(1,3) ~= 0) && (tictactoe(2,1) ~= 0) && (tictactoe(2,2) ~= 0) && (tictactoe(2,3) ~= 0) && (tictactoe(3,1) ~= 0) && (tictactoe(3,2) ~= 0) && (tictactoe(3,3) ~= 0))
        fprintf(2, 'LOOKS LIKE IT IS A TIE.\n') %If there is no winner, and the for loop is out of turns, it is a tie
    end
    clear workspace %clears the value of newGame so the player can redefine it
    newGame = input('If you would like another futile attempt, enter "1", if you would like to admit defeat, enter "2":'); %Prompts player to chose if they would like to lose again.
    if (newGame == 1) %If player chooses to play again, it will loop back to the beginning of the while loop
        fprintf(2, 'Really? I would have thought you would have quit while you still had some pride left.\n')
    else
        fprintf(2, 'I am a winner winner chicken dinner :)\n I hope you had fun, because I know I had fun kicking your butt.\n ADIOS CONTAMINOS!\n')
        break %If the players chooses anything besides '1', it will break out of the while loop and end the game.
    end
end

    

