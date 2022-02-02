function[]= stretching1(imge, new_min , new_max)
[H, W , L]= size(imge);
new_imge=zeros(H,W);
new_imge= double(new_imge);
old_min=min(min(imge));
old_max=max(max(imge));

for i=1:H
  for j=1:W
    new_imge(i,j)=(((imge(i,j)-old_min))/(old_max-old_min)*(new_max-new_min))+new_min;
  end
end

new_imge= uint8(new_imge);

subplot(1,2,1),imshow(imge),title('original image');
subplot(1,2,2),imshow(new_imge),title('stretched image');
end

    
 