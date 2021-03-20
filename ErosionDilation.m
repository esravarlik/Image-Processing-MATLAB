clc;
clear all;
img = imread('image.jpg');
img = im2bw(img);

[m, n] = size(img);
v = logical([0 1 0; 1 1 1; 0 1 0]);
%v = logical([1 1 1;1 1 1;1 1 1]);
x =[1 1 1; 1 1 1;1 1 1];

for row=2:(n-1)
    for column=2:(m-1)
        row1 = column-1; row2 = column+1;
        column1 = row-1; column2 = row+1;
        x = img(row1:row2, column1:column2);
        pixel = x(v);
        erosion(column, row) = min(pixel);
        dilation(column, row) = max(pixel);
    end
end

subplot(1,3,1); imshow(img); title('Original Image')
subplot(1,3,2); imshow(erosion); title('Erosion')
subplot(1,3,3); imshow(dilation); title('Dilation')
