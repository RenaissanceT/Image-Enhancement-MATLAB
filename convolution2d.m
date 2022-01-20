% for loop function to apply the fliter 
function [g] = convolution2d(f,h)
f = double(f);
[rows, columns] = size(f);
f_pad = zeros(rows+2, columns+2);
f_pad (2:end-1,2:end-1)=f;
% Consider the 2-D LTID system impulse response
% h = [-1,-1,-1;0,0,0;1,1,1];
% flip the fliter left to right, up to down
h_1 = fliplr(flipud(h));
g = zeros(rows, columns);
for i = 2:rows
    for j = 2:columns
        g(i-1,j-1) = sum(sum(h_1 .* f_pad (i-1:i+1,j-1:j+1)));
    end
end



