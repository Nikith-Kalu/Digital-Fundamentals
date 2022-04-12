clc
%Prac 2, change a user defined colour to black
X = imread('coloredChips.png');
%Creates a user menu. With inputs of a,b,c
disp('colour change program')
disp('Select colour to change')
disp('a. Red')
disp('b. Green')
disp('c. Blue')
x = input('enter selection:', 's'); %asks user for value

redChannel = rgbImage(:, :, 1);
greenChannel = rgbImage(:, :, 2);
blueChannel = rgbImage(:, :, 3);

% Find pixels that are red
redPixels = redChannel == 255 & greenChannel  == 0 & blueChannel  == 0;
% Find pixels that are blue
bluePixels = redChannel == 0 & greenChannel  == 0 & blueChannel  == 255;
% Find pixels that are green
greenPixels = redChannel == 0 & greenChannel  == 255 & blueChannel  == 0;
% Find pixels that are black
blackPixels = redChannel == 0 & greenChannel  == 0 & blueChannel  == 0;

%switch case statement 
switch x
    case 'a' %changes colour to red
       redChannel(blackPixels) = 255;
       greenChannel(blackPixels) = 0;
       blueChannel(blackPixels) = 0;
   case 'b' %changes colour to green
       newX = rgb(X, 'g', 'k');
   case 'c' %changes colour to blue
       newX = rgb(X, 'b', 'k');
   otherwise %if incorrect option is chosen displays error message
       error('Incorrect menu option selected')
end