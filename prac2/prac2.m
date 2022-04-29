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
x = input('enter selection:', 's'); %asks user for value
%
%uses the switch case statement to call rgb function
switch x
    case 'a' %changes colour to red 
       newX = rgb(X, 'r', 'k');
    case 'b' %changes colour to green 
       newX = rgb(X, 'g', 'k');
    case 'c' %changes colour to blue 
       newX = rgb(X, 'b', 'k');
    case 'd' %changes colour to yellow
       newX = rgb(X, 'y', 'k');
   otherwise %if incorrect option is chosen displays error message
       error('Incorrect menu option selected')
end
%displays the original image and the changed colour image.
figure(1), imshow(X)
figure(2), imshow(newX)




