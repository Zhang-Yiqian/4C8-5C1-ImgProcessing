clear; 
close all;
name = 'pool.01.bmp';
pic = imread(name);
r = pic(:, :, 1);
g = pic(:, :, 2);
b = pic(:, :, 3);
% pic = b;
mask = (r >= 50 & r <= 140 & g >= 40 & g <= 180 & b >= 30 & b <= 150);
% r = 50-140
% g = 40-175
% b = 30-100
figure(1)
imshow(mask)
figure(2)
imshow(pic)
figure(3)
imshow((r >= 40 & r <= 180))