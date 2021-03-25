clc;
clear all;
%Image Missing Line IKONOS
im = imread('image.tiff');
im = double(im);
[m n k] = size(im);
R =im(:,:,1);
G =im(:,:,2);
B =im(:,:,3);

for i=1:m
    t=0;
    for j=1:n
        if(im(i,j) == 0)
            t=t+1;
        end
    end
    if(t == n)
        fprintf('%d\n',i);
        y=i;
    end
end
for i=1:n
    s=0;
    for j=1:m
        if(im(j,i) == 0)
            s=s+1;
        end
    end
    if(s == m)
        fprintf('%d\n',i);
        x=i;
    end
end
R(:,x)=(R(:,x-1)+R(:,x+1))./2;
G(:,x)=(G(:,x-1)+G(:,x+1))./2;
B(:,x)=(B(:,x-1)+B(:,x+1))./2;

R(y,:)=(R(y-1,:)+R(y+1,:))./2;
G(y,:)=(G(y-1,:)+G(y+1,:))./2;
B(y,:)=(B(y-1,:)+B(y+1,:))./2;

im=cat(3,R,G,B);
imshow(uint8(im));
