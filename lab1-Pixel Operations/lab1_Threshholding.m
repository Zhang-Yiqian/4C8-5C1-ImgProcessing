clear; 
close all;
f = 'nuclei.02.png';
pic = imread(f);
% set the threshhold
mask = (pic >= 65 & pic <= 255);
figure(1)
imshow(mask)
figure(2)
imshow(pic)



