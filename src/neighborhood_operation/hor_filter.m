function [  ] = hor_filter(image)
%UNTITLED11 Summary of this function goes here
%   Detailed explanation goes here
mask_hor=[-1 -2 -1; 0 0 0; 1 2 1];


ni = imfilter(image,mask_hor);
subplot(1,2,1), imshow(image),title('image');
subplot(1,2,2), imshow(ni),title('edge horizontal detection');

end

