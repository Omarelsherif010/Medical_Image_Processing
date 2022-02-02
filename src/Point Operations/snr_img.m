function [ snr ] = snr_img( img )
%UNTITLED6 Summary of this function goes here
%   Detailed explanation goes here
img = double(img);
imax = max(max(img));
imin = min(min(img));
std_img = std(std(img));

snr = 10*log((imax-imin)/std_img);

end

