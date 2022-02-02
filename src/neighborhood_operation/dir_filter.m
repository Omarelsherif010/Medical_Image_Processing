function [  ] = dir_filter(image)
%UNTITLED14 Summary of this function goes here
%   Detailed explanation goes here
mask_dir=[0 -1 -2; 1 0 -1; 2 1 0];


ni = imfilter(image,mask_dir);
subplot(1,2,1), imshow(image),title('image');
subplot(1,2,2), imshow(ni),title('edge diagonal right detection');

end

