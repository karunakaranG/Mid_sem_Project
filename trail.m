function[AA] = trail(img)
imgsr=uint8(img);
%figure,imshow(imgsr);
z=size(imgsr,1);
y=size(imgsr,2);
imgc=padarray(imgsr,[1,1]);
LBP_Im = zeros(z,y);
S=zeros(3,3);
for i = 1:z
    for j =1: y
        A = imgc(i:i+2, j:j+2);
         c=A(2,2);
        S(A>=c)=1;
        S(A<c)=0;
       
  
        LBP_Im(i,j) = S(2,3) + S(1,3)*2 + S(1,2)*4 + S(1,1)*8 + S(2,1)*16 + S(3,1)*32 + S(3,2)*64 + S(3,3)*128;
    end 
end
%figure,imshow(LBP_Im);
%figure,imshow(uint8(LBP_Im));

       SA=uint8(LBP_Im);
       AA=imhist(SA);
     
  
           
         
end