function entropy = quantisedEntropy(img, Q_step)

img = Q_step * round(img / Q_step);
edges = min(img(:)) : max(img(:));
X = histcounts(img, edges, 'Normalization', 'probability');
H = X .* log2(X);
H(isnan(H)) = 0;
entropy = -sum(H);

end