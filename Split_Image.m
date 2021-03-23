clc;
clear all;
%the number of rows and columns must be the same
img = imread('square_image.jpg','jpg');
[m,n,k] = size(img);
w = m/2;
h = n/2;

p1 = imcrop(img, [1 1 h w]);
p2 = imcrop(img, [h 1 h w]);
p3 = imcrop(img, [1 w h m]);
p4 = imcrop(img, [h w m n]);
p = [p3 p1;p4 p2];

subplot(1,2,1); imshow(img); title('Original Image')
subplot(1,2,2); imshow(p);   title('Split Image')
