function [  ] = dil_filter(image)
%UNTITLED13 Summary of this function goes here
%   Detailed explanation goes here
mask_dil=[2 1 0; 1 0 -1; 0 -1 -2];


ni = imfilter(image,mask_dil);
subplot(1,2,1), imshow(image),title('image');
subplot(1,2,2), imshow(ni),title('edge diagonal left detection');

end

