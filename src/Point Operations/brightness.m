function[]=brightness(imge,value,option)
[H , W, l]= size(imge);
new_imge= zeros(H,W); 

for i=1:H
    for j=1:W
          if option==1
              new_imge(i,j)=imge(i,j)+value;
          end
          if option==2
               new_imge(i,j)=imge(i,j)-value;
          end
          if option==3
               new_imge(i,j)=imge(i,j)*value;
          end
          if option==4
               new_imge(i,j)=imge(i,j)/value;
          end
          if option==5
               imge=double(imge);
               new_imge(i,j)=imge(i,j)^value; 
          end
          
    end
end
new_imge=uint8(new_imge);
imge = uint8(imge);
subplot(1,2,1),imshow(imge),title('Orignial Image');
subplot(1,2,2),imshow(new_imge),title('Image After Operation');

end
          