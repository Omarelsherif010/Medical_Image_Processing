function [ C_rms ] = rms_contrast( img )
[H, W, L] = size(img);
%new_img = zeros(H,W);
img = double(img);
sum_img=0;
sum_diff=0;
for i=1:H
    for j=1:W
        sum_img = sum_img + img(i,j);
    end
end
i_mean = sum_img / (H*W);
for i=1:H
    for j=1:W      
        sum_diff = sum_diff + power(img(i,j)-i_mean,2);
    end
end

C_rms = sqrt(sum_diff/(H*W-1));
disp(C_rms);
end

