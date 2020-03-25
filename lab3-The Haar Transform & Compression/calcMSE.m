function MSE = calcMSE(Y1, Y2)
% This function takes as input two 2D array Y1 and Y2 containing
% the image intensities of two pictures and returns the mean square error
% between both Y1 and Y2.

MSE = sum((Y1 - Y2) .^ 2, 'all') / numel(Y1); 

end