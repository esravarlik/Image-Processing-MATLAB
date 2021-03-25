clc;
clear all;

%Image Missing Line IKONOS
im = imread('image.jpg');
imtool(im);
im = double(im);

R =im(:,:,1);
G =im(:,:,2);
B =im(:,:,3);
%imtool [0,0,0] rows and columns found.
m=155;
n=169;

R(:,n)=(R(:,n-1)+R(:,n+1))./2;
G(:,n)=(G(:,n-1)+G(:,n+1))./2;
B(:,n)=(B(:,n-1)+B(:,n+1))./2;

R(m,:)=(R(m-1,:)+R(m+1,:))./2;
G(m,:)=(G(m-1,:)+G(m+1,:))./2;
B(m,:)=(B(m-1,:)+B(m+1,:))./2;

im=cat(3,R,G,B);
imshow(uint8(im));
