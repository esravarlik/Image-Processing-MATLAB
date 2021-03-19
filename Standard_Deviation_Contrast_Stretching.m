clc;
clear all;

img = imread('image.jpg','jpg');
img = rgb2gray(img);
img_double = double(img);
subplot(2,4,1); imshow(img);title('Original Image');
subplot(2,4,5); imhist(img);title('Original Histogram');

v = img_double(:);
v = v';
ort = mean(v);
st_dev = std(v);

i=1; j=5;
while i<4
    k = input('3 Standard Deviation Coefficient: ');
    
    min_value = (ort - (k.*(st_dev)));
    max_value = (ort + (k.*(st_dev)));
    imdouble = mat2gray(img_double,[min_value,max_value]);
    
    v(v<min_value)= 0;
    v(v>max_value)= 255;
    
    subplot(2,4,i+1); imshow(imdouble);
    subplot(2,4,j+1); imhist(imdouble);
    i = i+1;
    j = j+1;
end