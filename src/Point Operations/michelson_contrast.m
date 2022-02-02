function [ C_michelson ] = michelson_contrast( img )

fmax = max(max(max(img)));
fmin = min(min(min(img)));
C_michelson = (fmax-fmin)/(fmax+fmin);
C_michelson = im2double(C_michelson);
disp(C_michelson);
end

