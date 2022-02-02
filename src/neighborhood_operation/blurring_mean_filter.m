function [  ] = blurring_mean_filter( img )
%UNTITLED21 Summary of this function goes here
%   Detailed explanation goes here

% Reading image as input

[m,n] = size(img);
output = zeros(m,n);

% Now we'll calculate ouput for each pixel
for i=1:m
    for j=1:n
        % BOundaries of similarity window for that pixel
        rmin = max(1, i-1);
        rmax = min(m, i+1);
        cmin = max(1, j-1);
        cmax = min(n, j+1);
      %now the neighborhood matrix, denoting it by temp
      temp = img(rmin:rmax,cmin:cmax);
      %now the pixel of output will be the average of this  neighborhood
      output(i,j)= mean(temp(:));
    end
end

% convert cleared to uint8
output= uint8(output);

% show results
%figure(1);
%set(gcf, 'Position', get(0,'ScreenSize'));
subplot(1,2,1),imshow(img),title('original Image');
subplot(1,2,2),imshow(output),title('output of mean filter');
end

