function entropy = calcEntropy(img)
%This function takes as input a 2D array Y containing
%the image intensities and returns the entropy.

edges = min(img(:)) : max(img(:));
X = histcounts(img, edges, 'Normalization', 'probability');
H = X .* log2(X);
H(isnan(H)) = 0;
entropy = -sum(H);

end

