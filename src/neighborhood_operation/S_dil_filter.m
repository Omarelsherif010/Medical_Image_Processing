function [  ] = S_dil_filter(image)
%UNTITLED18 Summary of this function goes here
%   Detailed explanation goes here
mask_dil=[1 0 0; 0 1 0; 0 0 -1];


ni = imfilter(image,mask_dil);
subplot(1,2,1), imshow(image),title('image');
subplot(1,2,2), imshow(ni),title('sharp diagonal left');

end

