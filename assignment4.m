%Assignment 4 TicTacToe with loops

clear
clc % clears workspace and command window before running program

tictactoe = zeros(3,3) %Displays a blank board
pause(3)
fprintf (2, 'I will go first\n')
pause(1)

%Turn 1

%Computer's Turn 1
tictactoe(3,3) = 1

%Human's Turn 1
row1 = input('row?'); %Prompts player to enter the row they would like to place their move
%If the row entered is outside of the matrix
while row1 > 3 || row1 < 1
    fprintf(2, 'That is not a valid entry, the rules were pretty specific, pick a row 1, 2, or 3 and then pick a column 1, 2, or 3. Please try again. \n')
    row1 = input('row?');
end

while isempty(row1)
    fprintf(2, 'Yoohoo? Anybody there? You have to enter a move. I will let you try again.\n')
    row1 = iput('row?');
end

col1 = input('column?'); %Prompts player to enter the column they would like to place their move
%If the column entered is outside of the matrix
while col1 > 3 || col1 < 1
    fprintf(2, 'That is not a valid entry, the rules were pretty specific, pick a row 1, 2, or 3 and then pick a column 1, 2, or 3. Please try again. \n')
    col1 = input('column?');
end

while isempty(col1)
    fprintf(2, 'Yo, you forgot to enter a move.\n')
    col1 = input('column?');
end

while tictactoe(row2, col2) == 1 || tictactoe(row2,col2) == 2 
    fprintf(2, 'That spot is occupied, bro. Please try again.\n')
    row1 = input('row?');
    col1 = input('column?');
end

tictactoe(row1,col1) = 2;
