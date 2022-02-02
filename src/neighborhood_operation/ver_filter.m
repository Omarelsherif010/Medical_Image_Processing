function [  ] = ver_filter(image)
%UNTITLED12 Summary of this function goes here
%   Detailed explanation goes here
mask_ver=[-1 0 1; -2 0 2; -1 0 1];


ni = imfilter(image,mask_ver);
subplot(1,2,1), imshow(image),title('image');
subplot(1,2,2), imshow(ni),title('edge vertical detection');

end

