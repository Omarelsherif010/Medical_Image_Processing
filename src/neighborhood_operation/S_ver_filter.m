function [  ] = S_ver_filter(image)
%UNTITLED16 Summary of this function goes here
%   Detailed explanation goes here
mask_ver=[0 1 0 ; 0 1 0; 0 -1 0];


ni = imfilter(image,mask_ver);
subplot(1,2,1), imshow(image),title('image');
subplot(1,2,2), imshow(ni),title('sharp vertical');

end

