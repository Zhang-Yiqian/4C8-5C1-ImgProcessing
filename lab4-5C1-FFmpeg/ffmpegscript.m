clear
close all
% check the information 
% ffprobe -show_format waterWorld.1280x720.mp4 

% transcoding original sequance 

% 1. keep constant bitetate [256:256:4096]
% ffmpeg -i waterWorld.1280x720.mp4 -vcodec libx264 -b:v 256k -psnr 
% -pix_fmt yuv420p output.mp4

cb_psnr = [22.787, 26.714, 28.691, 29.939, 30.842, 31.538, 32.112, 32.599, ...
  33.035, 33.423, 33.789, 34.129, 34.446, 34.752, 35.036, 35.314];
cb_bitrate = [256:256:4096] / 1000;

% 2. keep constant quality  [2, 4, 10, 15, 20, 25, 30, 35, 40, 45, 50]
% ffmpeg -i waterWorld.1280x720.mp4 -vcodec libx264 -qp 2 -psnr -pix_fmt yuv420p output.mp4

cq_bitrate = [82005.8, 71576.4, 43809.0, 28104.3, 17480.9, 10433.8, 5604.0,...
  2601.4, 1302.8, 741.9, 478.3, 348.1, 276.6]/1000;
cq_psnr = [60.148, 57.259, 51.855, 48.182, 44.500, 40.828, 36.963, 33.437,...
  30.451, 27.613, 24.802, 22.960, 21.312];

% plot curves
figure(1)
plot(cb_bitrate, cb_psnr, 'r+-', 'linewidth', 3)
hold on
plot(cq_bitrate, cq_psnr, 'b*:', 'linewidth', 3)
xlim([0 9])
xlabel('Bitrate / Mbps') 
ylabel('PSNR / dB') 
legend('Constant Bitrate', 'Constant Quality', 'Location','southeast')

ax = gca;
ax.FontSize = 18;






