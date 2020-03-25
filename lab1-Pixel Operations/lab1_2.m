clear; 
close all;
name = 'sigmedia06907.tif';
pic = imread(name);
% figure(1)
% imshow(pic);
% title('RGB image', 'FontSize', 18)

gray = rgb2gray(pic);
figure(1)
imshow(gray);
title('gray image', 'FontSize', 18)
figure(2)
histogram(gray, 256)
title('histogram of grayscale image', 'FontSize', 18)
[vres,hres]=size(gray);
disp(vres);
disp(hres);
% the output is 576 and 720

% figure(2)
% histogram(pic(:, :, 1), 256)
% title('R component', 'FontSize', 18)
% 
% figure(3)
% histogram(pic(:, :, 2), 256)
% title('G component', 'FontSize', 18)
% 
% figure(4)
% histogram(pic(:, :, 3), 256)
% title('B component', 'FontSize', 18)





