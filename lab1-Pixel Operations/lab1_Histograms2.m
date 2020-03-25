clear; 
close all;
name = 'pool.01.bmp';
pic = imread(name);
[vres. hres] = size(pic);
figure(1)
histogram(pic(:, :, 1), 256)
figure(2)
histogram(pic(:, :, 2), 256)
figure(3)
histogram(pic(:, :, 3), 256)
figure(4)
imshow(pic(:, :, 1))
figure(5)
imshow(pic(:, :, 2))
figure(6)
imshow(pic(:, :, 3))