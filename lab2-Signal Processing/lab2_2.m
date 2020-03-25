clear
close all

file = "../lab1/Sigmedia15979.TIF";
I = imread(file);
gray = rgb2gray(I);

% get a separable gaussian filter
fs = gaussianf(1.5, 21, 'separable');
% apply 1D gaussian filter to both the rows and the columns of the image
tic
for i = 1 : 1000
  gaus_1 = imfilter(gray, fs, 'conv', 'same');
  gaus_2 = imfilter(gaus_1, fs', 'conv', 'same');
end
toc

% get a separable gaussian filter
fc = gaussianf(1.5, 21, 'combined');
% apply 2D gaussian filter
tic 
for i = 1 : 1000
  gaus_3 = imfilter(gray, fc, 'conv', 'same');
end 
toc

%%%%%%%%%%%%%% log %%%%%%%%%%%%%%%%
% Elapsed time is 1.208801 seconds.
% Elapsed time is 3.770891 seconds.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
