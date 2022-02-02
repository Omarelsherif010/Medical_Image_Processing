function[]= sharp_filter(image, choice)



mask_point=[-1 -1 -1; -1 8 -1; -1 -1 -1];
mask_hor=[-1 -2 -1; 0 0 0; 1 2 1];
mask_ver=[-1 0 1; -2 0 2; -1 0 1];
mask_dil=[2 1 0; 1 0 -1; 0 -1 -2];
mask_dir=[0 -1 -2; 1 0 -1; 2 1 0];

ni = imfilter(image,mask);
subplot(1,2,1), imshow(image),title('image');
subplot(1,2,2), imshow(ni),title(text);

end
