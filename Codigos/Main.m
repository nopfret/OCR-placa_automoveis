clc 
clear all
close all

N1 = init();


for i = 1:size(N1,2);
Im1 = N1{6};
Im = rgb2gray(Im1);
Im = color_segmentation(Im1);
[IL, laiers] = bwlabel(Im);
for i = 1:laiers
I2 = (IL==i);
m(i) = mpq(I2,0,0);
end
[M,I] = max(m);
II = IL == I;

Iaux(:,:,1) = im2double(II).*im2double(Im1(:,:,1));
Iaux(:,:,2) = im2double(II).*im2double(Im1(:,:,2));
Iaux(:,:,3) = im2double(II).*im2double(Im1(:,:,3));

Let = cut(II);
figure()
bb(Let,Im1);
clear Iaux
end

