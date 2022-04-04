function imout = rgb(imin, colourchangefrom, colourchangeto)
% image is imin
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
                if (imin(k,l,1) > 127) && (imin(k,l,2) < 127) && (imin(k,l,3) < 127)
                    imout(k,l,1)=red;
                    imout(k,l,2)=green;
                    imout(k,l,3)=blue;
                end
            case 'g'
                if (imin(k,l,1) < 127) && (imin(k,l,2) > 127) && (imin(k,l,3) < 127)
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
            otherwise
                error('Incorrect Parameters')
        end     
    end
end

