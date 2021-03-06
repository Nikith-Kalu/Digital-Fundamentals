function imout = rgb(imin, colourchangefrom, colourchangeto)
% imin is image in
[len, wid, ~] = size(imin);
imout = imin; 

% Determine 
switch colourchangeto
    case 'r'
        red = 255;
        green = 0;
        blue = 0;
    case 'g'
        red = 0;
        green = 255;
        blue = 0;
    case 'b'
        red = 0;
        green = 0;
        blue = 255;
    case 'y'
        red = 255;
        green = 255;
        blue = 0;
    case 'o'
        red = 239;
        green = 120;
        blue = 34;
    case 'k'
       red = 0;
       green = 0;
       blue = 0;
    
    otherwise
        error('Incorrect parameters.');
end

for k = 1:len
    for l = 1:wid

        switch colourchangefrom
            case 'r'
                if (imin(k,l,1) > 110) && (imin(k,l,2) < 69) && (imin(k,l,3) < 120)
                    imout(k,l,1)=red;
                    imout(k,l,2)=green;
                    imout(k,l,3)=blue;
                end
            case 'g'
                if (imin(k,l,1) < 120) && (imin(k,l,2) > 100) && (imin(k,l,3) < 135)
                    imout(k,l,1)=red;
                    imout(k,l,2)=green;
                    imout(k,l,3)=blue;
                end
            case 'b'
                if (imin(k,l,1) < 127) && (imin(k,l,2) < 127) && (imin(k,l,3) > 127)
                    imout(k,l,1)=red;
                    imout(k,l,2)=green;
                    imout(k,l,3)=blue;
                end
            case 'y'
                if (imin(k,l,1) > 135) && (imin(k,l,2) > 135) && (imin(k,l,3) < 69)
                    imout(k,l,1)=red;
                    imout(k,l,2)=green;
                    imout(k,l,3)=blue;
                end
            case 'o'
                if (imin(k,l,1) > 220) && (imin(k,l,2) > 35) && (imin(k,l,2) < 130) && (imin(k,l,3) < 55)
                    imout(k,l,1)=red;
                    imout(k,l,2)=green;
                    imout(k,l,3)=blue;
                end
            
            otherwise
                error('Incorrect Parameters')
        end  
    end
end

