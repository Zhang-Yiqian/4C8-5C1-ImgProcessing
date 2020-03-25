clear
close all
file = "../lab1/Sigmedia15979.TIF";
I = imread(file);
gray = rgb2gray(I);
figure(1)
imshow(gray)
mask_1 = (gray > 55 & gray < 200);
mask_2 = (gray > 200 | gray == 200);
% apply linear transformation to every pixel 
img_1 = 1.7586 * double(gray) - 96.7241;
img_2 = mask_1 .* img_1 + mask_2 * 255;
figure(2)
imshow(uint8(img_2))





