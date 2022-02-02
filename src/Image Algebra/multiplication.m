function [  ] = multiplication( imge,value )
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here

[H , W, l]= size(imge);
new_imge= zeros(H,W); 

for i=1:H
    for j=1:W
              new_imge(i,j)=imge(i,j)*value;
    end
end
new_imge = uint8(new_imge);

subplot(1,2,1),imshow(imge),title('orignial image');
subplot(1,2,2),imshow(new_imge),title('image multplication');
end
