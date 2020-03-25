clear 
close all

Y = imread('girlface.png');
Q_step = 50;
H = calcHaar(Y, 1);
H = Q_step * round(H / Q_step);
img_1 = uint8(calcInvHaar(H, 1));
figure(1)
set(gca, 'Position', [0 0 1 1]);
imshow(img_1)
disp(calcMSE(img_1, Y))

H = calcHaar(Y, 2);
H = Q_step * round(H / Q_step);
img_2 = uint8(calcInvHaar(H, 2));
figure(2)
set(gca, 'Position', [0 0 1 1]);
imshow(img_2)
disp(calcMSE(img_2, Y))
 
H = calcHaar(Y, 3);
H = Q_step * round(H / Q_step);
img_3 = uint8(calcInvHaar(H, 3));
figure(3)
set(gca, 'Position', [0 0 1 1]);
imshow(img_3)
disp(calcMSE(img_3, Y))

H = calcHaar(Y, 4);
H = Q_step * round(H / Q_step);
img_4 = uint8(calcInvHaar(H, 4));
figure(4)
set(gca, 'Position', [0 0 1 1]);
imshow(img_4)
disp(calcMSE(img_4, Y))

H = calcHaar(Y, 5);
H = Q_step * round(H / Q_step);
img_5 = uint8(calcInvHaar(H, 5));
figure(5)
set(gca, 'Position', [0 0 1 1]);
imshow(img_5)
disp(calcMSE(img_5, Y))