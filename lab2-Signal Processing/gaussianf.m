function filter = gaussianf(var, size, type)
% Returns 1D or 2D Gaussian filters
% input:
%   var: the varaiance of a Gaussian filter (must be positive))
%   size: filter size (must be a positive integer)
%   type:
%     'combined' - (default) returns a 'size x size' Gaussian filter
%     'separable' - returns a '1 x size' Gaussian filter
% 
% author: Yiqian Zhang
% date: 02/05/2020

% default parameter
if (nargin<3)
	type = 'combined';
end

% determine if 'var' is positive
assert(var > 0, 'The variance must be positive')
var = double(var);

% determine if 'size' is a positive integer
assert(size == ceil(size) & size > 0, ...
  'The variance must be a positive integer')

% get 1-D values of coordinates
limit = (size - 1) / 2;
values = linspace(-limit, limit, size);

% extend and then generate the X coordinate matrix
X = ones(size, 1) * values;

% extend and then generate the Y coordinate matrix
Y = values' * ones(1, size); 

switch type
  % normalisation
  case 'combined'
    % calculate the filter in one shot
    f = exp(-((X .^ 2 + Y .^ 2) / (2 * var ^ 2)));
    filter = f ./ sum(f, 'all');
  case 'separable'
    f = exp(-(values .^ 2) / (2 * var ^ 2));
    filter = f ./ sum(f, 'all');
  otherwise
    error('Invalid filter type')
end

end








