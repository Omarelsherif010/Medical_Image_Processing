function [  ] = S_hor_filter(image)
%UNTITLED17 Summary of this function goes here
%   Detailed explanation goes here
mask_hor=[0 0 0; 1 1 -1; 0 0 0];


ni = imfilter(image,mask_hor);
subplot(1,2,1), imshow(image),title('image');
subplot(1,2,2), imshow(ni),title('sharp horizontal');

end

