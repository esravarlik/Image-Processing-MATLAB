clc;
clear all;
%Image: Landsat7 ETM+ 6 band
img = imread('image.tif');

B   =  double(img(:,:,1));
G   =  double(img(:,:,2));
R   =  double(img(:,:,3));
INF =  double(img(:,:,4));
SWINF =double(img(:,:,5));
T   =  double(img(:,:,6));

NDVI = (INF - R) ./ (INF + R);
RVI  = (INF ./ R);
Diff_BI = (INF - R);
DBI = sqrt(NDVI);

subplot(2,2,1); imshow(uint8(NDVI),[]);
subplot(2,2,2); imshow(uint8(RVI),[]);
subplot(2,2,3); imshow(uint8(Diff_BI),[]);
subplot(2,2,4); imshow(uint8(DBI),[]);