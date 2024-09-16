%% the very basic
5 + 5
3^2
[3,2].^2
sin(pi/2)
7/0
% MATLAB provides some special expressions for 
% some mathematical symbols, 
% like pi for π, Inf for ∞, i (and j) for √-1 etc.
% NaN stands for not a number
%% suppress output - use semicolon
x = 3;
y = x + 5;
%% adding comments
% (%) is used for indicating a comment line
% (%%) is used for breaking codes into sections

%{
    this is a block comment
%}
%% variables
clear x % delete the variable x from workspace
clear % delete all variables
%% creating vectors (column vector and row vector)
r_row = [1, 3, 5, 7, 9]
r_row = [1 3 5 7 9] 
% the two expressions above are the same
r_col = [1;3;5;7;9] 
%% creating matrices
A = [1 2 3; 4 5 6; 7 8 9]
% very manual way, there is usually more systematic way
% some useful commands
m = 3 % size of matrix
n = 2
A = ones(m,n)
A = zeros(m,n)
A = eye(m,n)
% can add/subtract/multiply/divide matrices.
% adding the . makes everything element-wise
% B/A is roughly the same as B*inv(A)
% A./B is the matrix with elements A(i,j)/B(i,j)
%% for loop
x = 0;
niter = 5;
for i = 1:niter
    x = x + 1;
end
%% while loop
x = 100;
while x > 90
    x = x - 1;
    fprintf('x = %d \n', x)
end
% %d - format as an integer
% %f - format as a floating point value
% %s - format as a string
%% continue statement
a = 9;
%while loop execution 
while a < 20
   a = a + 1; 
   if a == 15
      % skip the iteration 
      continue;
   end 
fprintf('value of a: %d\n', a);
end
%% if statement - execute statements if condition is true
limit = 1; A = rand(10,1) % can also take limit = 0.5
% generate a 10x1 vector, and each element is a draw from U(0,1)

if any(A > limit)
    disp("There is at least one value above the limit.")
else
    disp("All values are below the limit.")
end
%% if statement (continued)
x = 10;
minVal = 2;
maxVal = 6;

if (x >= minVal) && (x <= maxVal)
    disp('Value within specified range.')
elseif (x > maxVal)
    disp('Value exceeds maximum value.')
else
    disp('Value is below minimum value.')
end
%% function definition (two ways) -- see the end of this script
% difference in these two definition?

%% function handle
% need this when you pass a function as argument into a function
f = @square;
integral(f,0,1)
integral(sqr,0,1) % sqr is a inline-function
% integral(function,lower bound, upper bound)
%% linspace - generate evenly spaced points
y1 = linspace(-5,5) % generate 100 points by default
y2 = linspace(-5,5,11) 
% linspace(x1, x2, n) generates n points, 
% the spacing between the points is
% (x2-x1)/(n-1). Both x1 and x2 are included.

%% a:dx:b
0:0.2:1
%% vector slicing
v = [16 5 9 4 2 11 7 14];
v(3)
v([1 5 6])
v(3:7)
v(1:2:end)
v(end:-1:1)
% can do the same for matrix, just with two dimensions

%% call functions from .m file
 % 1) the .m file contains nothing except the function definition
%% function definition
% inline function
sqr = @(x) x.^2;
a = sqr(5)
%%
% syntax of a general function statement is
% function [out1,out2, ..., outN] = myfun(in1,in2,in3, ..., inN)
quadratic(2,4,-4)
function [x1,x2] = quadratic(a,b,c)

%this function returns the roots of 
% a quadratic equation.
% It takes 3 input arguments
% which are the co-efficients of x2, x and the 
%constant term
% It returns the roots
d = disc(a,b,c); 
x1 = (-b + d) / (2*a);
x2 = (-b - d) / (2*a);
end   % end of quadratic

function dis = disc(a,b,c) 
%function calculates the discriminant
dis = sqrt(b^2 - 4*a*c);
end   % end of sub-function

function y = square(x)
    y = x.^2;
end