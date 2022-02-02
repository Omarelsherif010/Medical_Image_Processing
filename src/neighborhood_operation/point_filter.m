function [  ] = point_filter(image)
%UNTITLED10 Summary of this function goes here
%   Detailed explanation goes here
mask_point=[-1 -1 -1; -1 8 -1; -1 -1 -1];


ni = imfilter(image,mask_point);
subplot(1,2,1), imshow(image),title('image');
subplot(1,2,2), imshow(ni),title('edge point detection');

end

