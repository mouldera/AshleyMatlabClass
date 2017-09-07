%%Assignment 2- MATLAB Class

%Ashley Moulder
% 8/31/2017

%%Chapter 1 Exercises

%1.) 
cu= 63.55;

%2.)
myage = 23;
myage-2;
myage+1;

%3.)
namelengthmax

%4.)
lb=3;
oz=48;
who
whos

%5.)
intmin uint32
intmax uint32
intmin uint64
intmax uint64

%6.)
val= 32.5
val= int32(val)

%11.)
pounds= 21
kilos = pounds*2.20462

%12.)
ftemp= 87
ctemp= (ftemp-32)*(5/9)

%13.)
cm= 15
inch= 15*2.54

%14.)
sind(90)
sin(0.5*pi)

%15.)
R1= 5;
R2= 3;
R3= 2;
Rt= 1/((1/R1)+(1/R2)+(1/R3))

%22.)
%uppercase letter are before lowercase

%24.)
'b' >= 'c' - 1; % produces the answer logical 1 = true
3 == 2 + 1; % produces the answer logical 1 = true
(3 == 2) + 1; % produces the answer 1
xor(5 < 6,8 > 4) % produces the answer logical 0 = false

%25.)
x = 6;
y = 8;
y = x + 5 % X>5, Y<10, only one can be true

%26.)
3*10^5 == 3e5; % produces the answer logical 1 = true

%27.)
log10(10000);
log10(10000) == 4

%%Chapter 2 Exercises

%1.)
[2:7]
[1.1:.2:1.7]
[8:-2:2]

%2.)
vec= linspace(0,2*pi,50)

%3.)
linspace(2,3,6)

%4.)
linspace(-5,-1,5)
5:2:9
8:-2:4

%6.)
[-1:.5:1]'

%7.)???
v = [2, 7, 4, 3, 9, 10, 6, 3, 2]
odds = v(rem(v,2) == 1) +3 %Adds three to only the odd integers of the vector

%8.)
mat= [7:10; 12:-2:6]
mat(1,3) + 4  %adds four to the element in the first row, third column
mat(2, 1:end) * 2 %doubles the elements in the second row
mat(1:2, 1:2) - 7 %subtracts 7 from the elements in the first two columns

%9.)
mat = [2:5; -1:2]
size(mat) %The size of the matrix is rows X columns, the number of elements in the matrix equals the product of the number of rows and columns

%10.)
mat = [2:5; -1:2];
mat(1,:) = [1:4] %Replaces the first row with 1:4
mat(:,3) = [7,8]' %Replaces the third column with 7,8

%12.)
rows= randi([1,5]) %assigns a random integer 1-5 to rows
cols= randi([1,5]) %assigns a random integer 1-5 to cols
zeros(rows,cols) %Gives a matrix of zeores using the variables rows and cols for the size of matrix

%23.)
3+5+7+9+11

%26.)???
num = [3:2:9]
den = [1:4]
sum(num./den) %divides each element by the element in the corresponding postion of the other vector, then sums the quotients

%30.)
matrix = randi([-10,10], 1,5)
matrix-3 %Subtracts three from each element in the matrix
size(matrix(matrix>0)) %Gives a vector of 1 X # of positive integers
abs(matrix) %Gives the absolute values of each element in the matrix
max(matrix) %Gives the max element in the the matrix

%31.)
newmatrix = [1:3; 3:5; 1, 9, 5; 8:10; 10, 8, 4]
max(newmatrix) %the max values in all rows
max(newmatrix') %the max values in all columns
max(max(newmatrix)) %the max value in the whole matrix


%Chapter 3 Exercises

%1.)
ro = 7; %the outer radius of the sphere
ri = 2; %the inner radius of the sphere
sphereVolume = ((4*pi)/3)*((ro^3)-(ri^3)) %the volume of the sphere

%4.)
vecInput = input('enter vector:')
matrixInput = [input('enter vector 1:'); input('enter vector 2:'); input('enter vector 3:')]

%6.)
fprintf 12345.6789\n;
fprintf ('The number is %10.4f\n', 12345.6789);
fprintf ('The number is %10.2f\n', 12345.6789);
fprintf ('The number is %6.4f\n', 12345.6789);
fprintf ('The number is %2.4f\n', 12345.6789);

%8.)
flowrate = input('Enter the flow in m^3/s:')
feetpersec= flowrate/0.028;
fprintf('a flow rate of %.3f meters per second\n', flowrate)
fprintf('is equivalent to %.3f feet per sec\n', feetpersec)

%13.)
speedX =input('Enter speed in the x direction:');
speedY =input('Enter speed in the y direction:');
speedZ =input('Enter speed in the z direction:');
speedVector = [speedX, speedY, speedZ];
unitVector = ((speedVector)/(sqrt(speedX^2)+(speedY^2)+(speedZ^2)))

