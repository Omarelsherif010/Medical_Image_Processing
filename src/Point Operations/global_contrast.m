function [ C_global ] = global_contrast( img )

fmax = max(max(img));
fmin = min(min(img));
Imax=300;
Imin=0;

C_global = (fmax-fmin)/(Imax+Imin);
C_global = im2double(C_global);
disp(C_global);
end

