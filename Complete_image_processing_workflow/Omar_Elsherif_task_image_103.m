%load and read image and mask
load('103.mat');
my_image = cjdata.image;
%border=cjdata.tumorBorder;
mask = cjdata.tumorMask;

%show image, mask, and histogram
figure,imshow(mask);title('mask');
figure,imshow(my_image);title('image 103');
figure,imhist(my_image);title('histogram of image 103');

%contrast measure in 4 ways
c_g = global_contrast(my_image);
c_m = michelson_contrast(my_image);
c_rms = rms(my_image);
u = uint8(my_image);
e = entropy(u);

%image enhancement with 4 ways
stretching = imadjust(my_image);
lim_stretching = imadjust(my_image ,stretchlim(my_image),[]);
equalization = histeq(my_image);
adap_equalization = adapthisteq(my_image);

%show images after enhancement
figure,imshow(stretching);title('stretched image');
figure,imhist(stretching);title('hist of stretched image');

figure,imshow(lim_stretching);title('limited stretched image');
figure,imhist(lim_stretching);title('hist of lim stretched image');

figure,imshow(equalization);title('equalized image');
figure,imhist(equalization);title('hist of equalized image');

figure,imshow(adap_equalization);title('adap equalized image');
figure,imhist(adap_equalization);title('hist of adap equalized image');


%measure snr to choose best enhanced image
img=uint8(my_image);
s=uint8(stretching);
l_s=uint8(lim_stretching);
eq=uint8(equalization);
ad_eq=uint8(adap_equalization);
no1=snr(img,s);
no2=snr(img,l_s);
no3=snr(img,eq);  % we notice that equalization is best enhanced from hist and snr
no4=snr(img,ad_eq);


%edge detection (first we apply noise removal then choose our mask then apply extraction)
mask=[1 1 1; 1 -8 1;  1 1 1];
edge_image=imfilter(my_image,mask);
figure,imshow(edge_image);title('edges of image');

edge_st=imfilter(stretching,mask);
figure,imshow(edge_st);title('edges of stretched image');

edge_eq=imfilter(equalization,mask);
figure,imshow(edge_eq);title('edges of equalized image');

%add noise to equalized image then detect edges again
img_noise=imnoise(equalization,'salt & pepper',0.02);
edge_eq_n=imfilter(img_noise,mask);
figure,imshow(edge_eq_n);title('edges of equalized image after adding noise');

%noise removal using average filter then appling cofficients 
H= fspecial('average',9); 
i = imfilter(equalization,H);
my_image_edge1 = edge(equalization,'Sobel');
figure,imshow(my_image_edge1);title('sobel');

my_image_edge2 = edge(equalization,'Prewitt');
figure,imshow(my_image_edge2);title('prewitt');

my_image_edge3 = edge(equalization,'Roberts');
figure,imshow(my_image_edge3);title('roberts');

my_image_edge4 = edge(equalization,'log');
figure,imshow(my_image_edge4);title('log');

my_image_edge5 = edge(equalization,'Canny');
figure,imshow(my_image_edge5);title('canny');

%shapring edges using laplacian
h_L = fspecial('laplacian',0.9);
v = imfilter(equalization,h_L);
figure,imshow(v);title('laplacian');


%thresholding single , double and multi
th1 = multithresh(equalization,1);
seg_I = imquantize(equalization,th1);
RGB = label2rgb(seg_I);
figure; imshow(RGB);title('RGB');
figure,imagesc(equalization);title('thresholding 1');

th2 = multithresh(equalization,1);
seg_I = imquantize(equalization,th2);
RGB = label2rgb(seg_I);
figure; imshow(RGB);title('RGB');
figure,imagesc(equalization);title('thresholding 2');

th3 = multithresh(equalization,1);
seg_I = imquantize(equalization,th3);
RGB = label2rgb(seg_I);
figure; imshow(RGB);title('RGB');
figure,imagesc(equalization);title('thresholding 3');



