clc;
clear all;
img = imread('image.jpg','jpg');

band1 = img(:,:,1);
band2 = img(:,:,2);
band3 = img(:,:,3);

false_color = cat(3,band3,band2,band1);
subplot(1,2,1); imshow(img); title('Band1,Band2,Band3');
subplot(1,2,2); imshow(false_color); title('Band3,Band2,Band1');
