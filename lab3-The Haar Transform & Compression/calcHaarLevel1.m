function [LL, HL, LH, HH] = calcHaarLevel1(Y)
% function H = calcHaarLevel1(Y)
% This function takes as input a 2D array Y containing
% the image intensities of a picture and returns the 1-level
% Haar Transform
% N=2 Haar Transform is implemented
% Author: Yiqian Zhang
% Date: 27/02/2020

% test for odd input
s = size(Y);
% column check
if mod(s(1), 2) ~= 0
  Y = Y(1 : end-1, :);
end
% row check
if mod(s(2), 2) ~= 0
  Y = Y(:, 1 : end-1);
end
Y = double(Y);

% define Haar kernel
T1 = 1 / 2 * [1 1; 1 1];
T2 = 1 / 2 * [-1 1; -1 1];
T3 = 1 / 2 * [-1 -1; 1 1];
T4 = 1 / 2 * [1 -1; -1 1];

% Haar transform using convolution (much faster)
% Note that here must be valid padding meaning that there is no
% zero-padding. This can make sure only pixels of the original image is 
% transformed
LL = conv2(Y, T1, 'valid');
HL = conv2(Y, T2, 'valid');
LH = conv2(Y, T3, 'valid');
HH = conv2(Y, T4, 'valid');

% we have to re-sample pixels because the default step size is 1 in CONV2,
% but we actually need the step size to be 2
LL = LL(1 : 2 : end, 1 : 2 : end);
HL = HL(1 : 2 : end, 1 : 2 : end);
LH = LH(1 : 2 : end, 1 : 2 : end);
HH = HH(1 : 2 : end, 1 : 2 : end);
LL = uint8(LL);
HL = uint8(HL);
LH = uint8(LH);
HH = uint8(HH);
H = [LL HL;LH HH];

end

