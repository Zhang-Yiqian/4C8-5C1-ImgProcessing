clear
close all

file = "../lab1/pool.01.bmp";
I = imread(file);
figure(1)
imshow(I)

fs = gaussianf(2.5, 15, 'combined');
% apply low pass filtering
I_ = imfilter(I, fs);

f = 0.7;
I_out = f * (I - I_) + I;
figure(2)
imshow(I_out)
