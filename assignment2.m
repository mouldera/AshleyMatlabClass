%%Assignment 2- MATLAB Class

%Ashley Moulder
% 8/31/2017

%%Chapter 1 Exercises

%1.) 
ac= 63.55;
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
sin(360)
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
y = x + 5
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
%7.)
v = [2, 7, 4, 3, 9, 10, 6, 3, 2]
odds = v(rem(v,2) == 1) +3
%8.)
mat = [7:10; 12:-2:6]
%9.)
mat = [2, 3; 4, 5; 6, 7; 8, 9]
%10.)
mat = [2, 3; 4, 5; 6, 7; 8, 9]
mat = [1:4;5:8]'
%12.)
rows= randi([1,5])
cols= randi([1,5])
zeros(rows,cols)
%23.)
sum = 3+5+7+9+11
%26.)
num = [3:2:9]
den = [1:4]
%30.)
matrix = [10, 7, 3, -5, -2]
matrix-3
matrix(matrix > 0)
abs(matrix)
max(matrix)
%31.)
newmatrix = [1:3; 3:5; 1, 9, 5; 8:10; 10, 8, 4]
max(newmatrix)
max(newmatrix')
max(max(newmatrix))


%Chapter 3 Exercises

%1.)
ro = 7; %the outer radius of the sphere
ri = 2; %the inner radius of the sphere
sphere = ((4*pi)/3)*((ro^3)-(ri^3)) %the volume of the sphere
%4.)
vec = input('enter vector:');
mat = [input('enter vector 1:'); input('enter vector 2:'); input('enter vector 3:')];
%6.)
fprintf 12345.6789\n;
fprintf ('The number is %10.4d\n', 12345.6789);
fprintf ('The number is %10.2d\n', 12345.6789);
fprintf ('The number is %6.4d\n', 12345.6789);
fprintf ('The number is %2.4d\n', 12345.6789);
%8.)
flowrate = input('Enter the flow in m^3/s:')
feetpersec= flowrate/0.028;
fprintf('a flow rate of %.3d meters per second\n', flowrate)
fprintf('is equivalent to %.3d feet per sec\n', feetpersec)

%13.)
speedx =input('Enter speed in the x direction:');
speedy =input('Enter speed in the y direction:');
speedz =input('Enter speed in the z direction:');
speedvector = [speedx, speedy, speedz]
unitvector = ((speedvector)/(sqrt(speedx^2)+(speedy^2)+(speedz^2)))

