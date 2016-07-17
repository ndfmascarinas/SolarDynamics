//im = imread();
//imshow(im);

//E = edge(rgb2gray(im), 'sobel', -0.5);
//imshow(E)




imagefile='F:\Research\SDO Image processing\img\20151219_001135_1024_0171.jpg'; 
I=imread(imagefile); 
I1G=rgb2gray(I);
scf(0); clf(0);
imshow(I1G,'mixer');
rect1=rubberbox();
imheight=size(I1G,"r");   //image height
rect1(2)=imheight-rect1(2);   //reverse y axes coordinates (0 is at top)
ROI1=imcrop(I1G,rect1);
scf(1); clf(1);
imshow(ROI1,'ROI1');
