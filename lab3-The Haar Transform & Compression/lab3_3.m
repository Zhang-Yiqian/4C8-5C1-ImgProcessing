clear
close all

img = imread('girlface.png');
figure(1)
imshow(img)
set(gca, 'Position', [0.01 0.01 0.99 0.99]);
% H_ = calcHaarLevel1(img);
[LL, HL, LH, HH] = calcHaarLevel1(img);

% convert Haar transform resuls to be postive integers to satisfy the 
% requirtment of IMSHOW

% H = H_;
% H(H < 0) = 0;
% figure(2)
% subplot(1,2,1);
% title('Haar transform')
% imshow(H)


% change the brightness and contrast adjusted for visualisation:
% LoLo /2 and 128 is added to the LoHi, HiLo and HiHi bands.

% H_adjust = H;
% H_adjust(1 : end/2, 1 : end/2) = H_adjust(1 : end/2, 1 : end/2) / 2; 
% mask = ones(size(H_adjust, 1), size(H_adjust, 2)) * 128;
% mask(1 : end/2, 1 : end/2) = 0;
% H_adjust = H_adjust + uint8(mask);
% 
% figure(3)
% imshow(H_adjust)

% print quantised entropy
Q_step = 50;
disp(quantisedEntropy(LL, Q_step))
disp(quantisedEntropy(LH, Q_step))
disp(quantisedEntropy(HL, Q_step))
disp(quantisedEntropy(HH, Q_step))

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

Q_step = 100; 
img_ = Q_step * round(img / Q_step);
disp(calcMSE(img, img_));

H = calcHaarLevel1(img);
H_ = Q_step * round(H / Q_step);
inv_img = uint8(calcInvHaar(H_, 1));
figure(4)
set(gca, 'Position', [0.01 0.01 0.99 0.99]);
imshow(inv_img)
disp(calcMSE(img, inv_img))

