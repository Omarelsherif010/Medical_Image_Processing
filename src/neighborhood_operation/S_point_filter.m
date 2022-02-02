function [  ] = S_point_filter(image)
%UNTITLED15 Summary of this function goes here
%   Detailed explanation goes here
mask_point=[0 -1 0,-1 5 -1, 0 -1 0];


ni = imfilter(image,mask_point);
subplot(1,2,1), imshow(image),title('image');
subplot(1,2,2), imshow(ni),title('sharp point ');


end

