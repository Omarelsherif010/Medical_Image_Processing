function [  ] = histogrameq( img )
%UNTITLED7 Summary of this function goes here
%   Detailed explanation goes here

[rows,columns,~] = size(img);
finalResult = uint8(zeros(rows,columns));
pixelNumber = rows*columns;
frequncy = zeros(256,1);
pdf = zeros(256,1);
cdf = zeros(256,1);
cummlative = zeros(256,1);
outpic = zeros(256,1);
for i = 1:1:rows
    for j = 1:1:columns
        val = img(i,j);
        frequncy(val+1) = frequncy(val+1)+1;
        pdf(val+1) = frequncy(val+1)/pixelNumber;
    end
end
sum =0 ;
%we want the 256 - 1 that's why we initailzed the intensityLevel with 255
%instead of 256
intensityLevel = 255;

for i = 1:1:size(pdf)
    sum =sum +frequncy(i);
    cummlative(i) = sum;
    cdf(i) = cummlative(i)/ pixelNumber;
    outpic(i) = round(cdf(i) * intensityLevel);
end


for i = 1:1:rows
    for j = 1:1:columns
        finalResult(i,j) = outpic(img(i,j) + 1);
    end
end
subplot(1,3,1),imshow(finalResult),title('manual histeq image');
subplot(1,3,2),imshow(histeq(img)),title('Built-in histeq');
subplot(1,3,3),imshow(img),title('Image');
end

