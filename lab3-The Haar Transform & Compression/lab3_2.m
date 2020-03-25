clear
close all
img = imread('girlface.png');
% print unquantised entropy
disp(calcEntropy(img))

% print quantised entropy
Q_step = 50;
disp(quantisedEntropy(img, Q_step))

% print MSE
img_ = Q_step * round(img / Q_step);
disp(calcMSE(img, img_))

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%% OUTPUT %%%%%%%%%%%%%
%    7.0817
%    4.0474
%    3.4772
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

figure(1)
set(gca, 'Position', [0 0 1 1]);
imshow(img)

figure(2)
set(gca, 'Position', [0 0 1 1]);
imshow(img_)

