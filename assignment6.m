function assignment6()  % *** WARNING: CONTAINS INTENTIONAL BUGS! ***
%---------------------------------------------------------------
%       USAGE: guessThatNumber()
%
%        NAME: Ashley Moulder
%
%         DUE: November 2
%
%
% DESCRIPTION: This program is supposed to allow the user to play
%              the Number Guessing Game, however, it contains bugs.
%              Your job is to find, correct, and mark the errors with
%              comments describing the bug, how you found it, 
%              and how you corrected it. Correct the bugs and submit this
%              corrected file on github. There are between 10 - 12 bugs,
%              depending on how you correct them. 
%
%      INPUTS: None
%
%     OUTPUTS: None
%
% Bugs:
%Bug1: line(110) the if statement was "if level = beginner", for an if
% statement, you need the equal statement to be '==' to make it a conditional
% statement instead of just setting the variable to equal beginner. This
% was found by just running the program and getting the error. I fixed it
% by adding another = sign
%Bug2: line(129, 159) the while loop was missing an end. This was found by
% running the program and the error occured. However, after looking at it,
% the real problem was that there was no 'end' to the if statement. This 
% made the if statement continue to run until after the 'game over' print. 
% I added an end after the if statement and this took care of the missing end
% problem.
%Bug 3: line(102)  the original line used ~=  however, 'invalid selection'
% appeared when I entered 1, 2, or 3. I changed the wording of the while 
% statement to use < 3 and 1 > instead, and this eliminated that problem.
%Bug 4: line(115) I noticed that the variable advancedhighest, wasn't the
% correct variable and would pose a problem when I tried to select that
% level, so I changed it to the appropriate variable 'advancedHighest'
%Bug 5: line (154) Everytime I played, I won on the first try. I decided I
% wasn't that good at guessing, and found out that it displayed that I won
% on the first try becuase it was set to display that anytime the first
% turn equaled 1, it would display that message everytime on the first turn.
% I created a 'win' situation, and nested the conditional of what turn 
% number it was to display the correct win statement.
%Bug 6: line(157) I realized when fixing bug 5, that the win condition if
% it wasn't the first try statment would never display becuase it wasn't written
% correctly. I deleted the elipses and made it all on one line inside the
% parenthsis.
%Bug 7: line(161) At the end of each guess, it would display that the game
% was over, even if the number guessed wasn't correct. This was because teh
% end for the while loop was after the game over display. I moved the end
% of the while loop to before the game over display, so it would only print
% if the while loop was over, indicating that the game was over.
%Bug 8: line(149) I also noticed while playing and correcting Bugs 5&6 that
% the too high or too low print conditions when the number was guessed
% incorrectly were the same. This was because both were set if the user
% guess was > than the secret number. I switched it to a < sign for the too
% low condition.
%Bug 9: line(135) When playing, it wouldn't let me select the highest
% number in the game level's range (10, 100, or 1000). I noticed it was
% becuase the condition was set to >= highest. I changed it to just a >
% sign so it would now included the highest number in the guessable range.
%Bug 10: line(120) I noticed that while playing it always selected the
% highest number in the range as the secret number. I changed the line of
% code to just use the randi function instead of the complicated one it was
% originally using.
%Bug 11: line(124,145) When initializing the number of tries, the variable numOfTries
% was set to 1. Inside the loop, the variable numOfTries was added to 1,
% meaning that the first turn would never equal 1, and thus if someone won
% on the first try, it would not display the correct message. It also
% displayed the wrong number of tries at the end of the game. I changed it
% to initialize the variable numOfTries to 0, so when added into the loop,
% the first time the loop is run, it would equal 1.
%
%---------------------------------------------------------------

beginner = 1;               % beginner level #
moderate = 2;               % moderate level #
advanced = 3;               % advanced level #
beginnerHighest = 10;       % highest possible number for beginner
moderateHighest = 100;      % highest possible number for moderate
advancedHighest = 1000;    % highest possible number for advanced

% clear screen and display game introduction

clc()
fprintf(['Guess That Number Game (buggy)\n\n', ...
'This program plays the game of Guess That Number in which you have to guess\n', ...
'a secret number.  After each guess you will be told whether your \n', ...
'guess is too high, too low, or correct.\n\n'])

% Get level of play (1-3) from user

fprintf('Please select one of the three levels of play:\n')
fprintf('   1) Beginner (range is 1 to %d)\n', beginnerHighest)
fprintf('   2) Moderate (range is 1 to %d)\n', moderateHighest)
fprintf('   3) Advanced (range is 1 to %d)\n', advancedHighest)

level = input('Enter level (1-3): ');  

while (level > 3) || (level < 1)   %Bug 3:invalid selection appeared if entered 1-3, changed the wording to use <, > instead of ~=   
fprintf('Sorry, that is not a valid level selection.\n')
level = input('Please re-enter a level of play (1-3): ');
end


% set highest secret number based on level selected

if level == beginner  %Bug 1: was 'level = beginner', needs to be == when an if statement.                   
    highest = beginnerHighest;
elseif level == moderate
    highest = moderateHighest;
elseif level == advanced 
    highest = advancedHighest; %Bug 4: advancedhighest is undefined function. Capitalized the H, now it equals the variable defined above.
end

% randomly select secret number between 1 and highest for level of play

secretNumber = randi(highest, 1);  %Bug 10: Secret number does not work, changed from 'floor(rand() + 1 * highest)' and used randi to simplify

% initialize number of guesses and User_guess

numOfTries = 0; %Bug 11: changed to 0 so the first try will be turn 1 instead of 2
userGuess = 0;

% repeatedly get user's guess until the user guesses correctly

while userGuess ~= secretNumber %Bug 2: Missing and 'end' for this while loop

% get a valid guess (an integer from 1-Highest) from the user

fprintf('\nEnter a guess (1-%d): ', highest);
userGuess = input('');
while (userGuess < 1) || (userGuess > highest) %Bug 9: for 1-10, told me 10 was not a valid entry. Changed to userGuess > highest so you can guess the highest number now.

fprintf('Sorry, that is not a valid guess.\nRe-enter a guess (1-%d): ', highest);

userGuess = input('');

end % of guess validation loop

% add 1 to the number of guesses the user has made

numOfTries = numOfTries + 1; %Bug 11: numOfTries will never equal 1 on the first turn. Changed numOfTries at intialization to 0

% report whether the user's guess was high, low, or correct

if userGuess < secretNumber %Bug 8: wasn't displaying too low or too high. Says if userGuess is greater than secretNumber, changed to less than sign.
fprintf('Sorry, %d is too low.\n', userGuess);
elseif userGuess > secretNumber 
fprintf('Sorry, %d is too high.\n', userGuess);
elseif userGuess == secretNumber
    if numOfTries == 1 %Bug 5: told the user it won on the first try even if it didn't guess the number correctly. Added an elseif statement for the win condition and nested another if statement if they won on the first try or the nth try
        fprintf('\nLucky You!  You got it on your first try!\n\n'); 
    else
        fprintf('\nCongratulations!  You got %d in %d tries.\n\n', secretNumber, numOfTries); %Bug 6: Doesn't print the congtulations correctly. deleted spaces and the elipses and added numOfTries
    end
end %Bug 2: The guessing while loop did not have an end, because this if statement did not have an end. Added end here.

end %Bug7: End of guessing loop was after the 'game over' print, presented the end game print even if guessed incorrectly. Moved End before the 'game over' print
% end of guessing while loop

fprintf('Game Over. Thanks for playing the Guess That Number game.\n\n');

% end of game