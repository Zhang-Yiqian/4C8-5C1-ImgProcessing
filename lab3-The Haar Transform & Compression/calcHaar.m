function H = calcHaar(Y, n)
% This function takes as input a 2D array Y containing
% the image intensities of a picture and returns the 1-level
% Haar Transform
% n is the number of levels used.
% Author: Yiqian Zhang
% Date: 27/02/2020

H = calcHaarLevel1(Y);

if n == 1
  return
end

for i = 1 : n-1
  % split L-L area of previous transform results
  t_area = H(1 : (2 ^ -i) * end, 1 : (2 ^ -i) * end);
  % do Level-1
  L_N = calcHaarLevel1(t_area);
  % replace original results
  H(1 : (2 ^ -i) * end, 1 : (2 ^ -i) * end) = L_N;
end

end


