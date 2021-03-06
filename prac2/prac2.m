clc
%Prac 2, Change a colour to black program
X = imread('coloredChips.png');
%Creates a user menu. With inputs of a,b,c,d
disp('colour change program')
disp('Select colour to change')
disp('a. Red')
disp('b. Green')
disp('c. Blue')
disp('d. Yellow')
disp('e. Orange')
x = input('enter selection:', 's'); %asks user for value
%
%uses the switch case statement to call rgb function
switch x
    case 'a' %picks colour red 
       newX = rgb(X, 'r', 'k');
    case 'b' %picks colour green 
       newX = rgb(X, 'g', 'k');
    case 'c' %picks colour blue 
       newX = rgb(X, 'b', 'k');
    case 'd' %picks colour yellow
       newX = rgb(X, 'y', 'k');
    case 'e' %picks colour orange 
       newX = rgb(X, 'o', 'k');
   otherwise %if incorrect option is chosen displays error message
       error('Incorrect menu option selected')
end

%displays the original image and the changed colour image.
figure('Name','Old', 'NumberTitle','off'), imshow(X)
title 'Original Image'
figure('Name', 'New', 'NumberTitle','off'), imshow(newX)
title 'Modified Image'




