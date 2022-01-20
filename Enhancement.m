% Exercise 3: Image Enhancement (30pts)
clear all;

% Using the imread function, read the image into MATLAB.
f = imread('brainMRI.jpg');
% Determine the size of the image matrix 
[rows columns numberOfColorChannels] = size(f);
r = double(f);
% Assuming the pixel gray values f are in the range [0,255]
% Enhance the image using the power-law transformation
% A good range of γ (a) values to test is 0.5-15
% Case 1: a = 15
a = 15;
s_1 = 255.^(1-a).*r.^(a);
figure;
subplot(2,3,1);
imshow(uint8(s_1));
title ('Case 1: gamma = 15');
% Case 2: a = 10
a = 10;
s_2 = 255.^(1-a).*r.^(a);
subplot(2,3,2);
imshow(uint8(s_2));
title ('Case 2: gamma = 10');
% Case 3: a = 5
a = 5;
s_3 = 255.^(1-a).*r.^(a);
subplot(2,3,3);
imshow(uint8(s_3));
title ('Case 3: gamma = 5');
% Case 4: a = 1
a = 1;
s_4 = 255.^(1-a).*r.^(a);
subplot(2,3,4);
imshow(uint8(s_4));
title ('Case 4: gamma = 1');
% Case 5: a = 0.8
a = 0.5;
s_5 = 255.^(1-a).*r.^(a);
subplot(2,3,5);
imshow(uint8(s_5));
title ('Case 5: gamma = 0.8');
% Case 6: a = 0.5
a = 0.5;
s_6 = 255.^(1-a).*r.^(a);
subplot(2,3,6);
imshow(uint8(s_6));
title ('Case 6: gamma = 0.5');

% Plot and compare the histograms of the original and enhanced images
% Alternatively, use the function imhist 
figure;
f = imread('brainMRI.jpg');
subplot(4,2,1)
imhist(f);
title ('Histogram regarding value of gamma');
subplot(4,2,2);
imshow(f);
title ('Original image of brainMRI.jpg');
subplot(4,2,3);
imhist(uint8(s_1));
title ('Histogram of Case 1: gamma = 15');
subplot(4,2,4);
imhist(uint8(s_2));
title ('Histogram of Case 2: gamma = 10');
subplot(4,2,5);
imhist(uint8(s_1));
title ('Histogram of Case 3: gamma = 5');
subplot(4,2,6);
imhist(uint8(s_1));
title ('Histogram of Case 4: gamma = 1');
subplot(4,2,7);
imhist(uint8(s_1));
title ('Histogram of Case 5: gamma = 0.8');
subplot(4,2,8);
imhist(uint8(s_1));
title ('Histogram of Case 6: gamma = 0.5');






