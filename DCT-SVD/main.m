clear all;
clc;
alpha=0.03;
A = imread('lenaTest3.jpg');
w = imread('watermark.png');
W=double(w);
A=double(A);
[W_IM,S,Uw,Vw ] = embedding(A,W,alpha);
[ EX_WM ] = extraction(A,S,W,W_IM ,alpha,Uw,Vw);
[ N_IM ] = addnoise(A,S,W,W_IM ,alpha,Uw,Vw);
 [ Blur_IM ] = blurring(A,S,W,W_IM ,alpha,Uw,Vw);
 [ compress_IM ] = compression(A,S,W,W_IM ,alpha,Uw,Vw);
  [ crop_IM ] = cropping(A,S,W,W_IM ,alpha,Uw,Vw );
  [R_IM1,R_IM2] = Rotation( A,S,W,W_IM ,alpha,Uw,Vw );
  [I] = row_col_blank( A,S,W,W_IM ,alpha,Uw,Vw  );
  [ sharp_IM ] = sharpening( A,S,W,W_IM ,alpha,Uw,Vw );
  [ J] = translation( A, S,W,W_IM ,alpha,Uw,Vw);