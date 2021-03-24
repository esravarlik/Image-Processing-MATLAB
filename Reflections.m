clc;
clear all;

img = imread('square_image.jpg');
img = im2double(img);
[m,n,k] = size(img);

vertical_horizontal = img(m:-1:1,n:-1:1,1:end);
horizontal_reflection = img(m:-1:1,1:end,1:end);
vertical_reflection = img(1:end,n:-1:1,1:end);

subplot(2,2,1); imshow(img);
subplot(2,2,2); imshow(vertical_horizontal);
subplot(2,2,3); imshow(horizontal_reflection);
subplot(2,2,4); imshow(vertical_reflection);