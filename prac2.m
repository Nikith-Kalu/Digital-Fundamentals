clc, clear

rgb = imread('coloredChips.png');
[le,w,~]=size(rgb);

Xo=rgb;

for r=1:le
    for k=1:w
        if rgb(r,k,1)>127 && rgb(r,k,2)<127 && rgb(r,k,3)<127
            Xo(r,k,1)=0;
            Xo(r,k,2)=0;
            Xo(r,k,3)=0;
        end
    end

end

figure(1)
imshow()