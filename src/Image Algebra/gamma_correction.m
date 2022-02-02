function [  ] = gamma_correction( img,value )
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here

[H , W, l]= size(img);
new_imge= zeros(H,W); 
img=double(img);
for i=1:H
    for j=1:W
              
              new_imge(i,j)=img(i,j)^value;
    end
end
img  = uint8(img);
new_imge = uint8(new_imge);
subplot(1,2,1),imshow(img),title('orignial image');
subplot(1,2,2),imshow(new_imge),title('image gamma correction');
end

