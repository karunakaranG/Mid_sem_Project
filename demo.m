function[le,re,no,mo]=demo(image)
reqToolboxes = {'Computer Vision System Toolbox', 'Image Processing Toolbox'};
if( ~checkToolboxes(reqToolboxes) )
 error('detectFaceParts requires: Computer Vision System Toolbox and Image Processing Toolbox. Please install these toolboxes.');
end

imgs = imread(image);
img = repmat( imgs, [1,1,3] );



detector = buildDetector();
[bbox bbimg faces bbfaces] = detectFaceParts(detector,img,2);
%f=imcrop(img,bbox(:, 1: 4));
l=imcrop(img,bbox(:, 5: 8));
r=imcrop(img,bbox(:, 9:12));
n=imcrop(img,bbox(:,17:20));
m=imcrop(img,bbox(:,13:16));
%figure,imshow(f);
%figure,imshow(l);
%figure,imshow(r);
%figure,imshow(n);
%figure,imshow(m);
le = imresize(l,[20 20]);
re = imresize(r,[20 20]);
no = imresize(n,[20 20]);
mo = imresize(m,[20 20]);
%folder='C:\Users\karuna\Documents\MATLAB\face\detect\finalset\';
%figure,imshow(e);
%figure,imshow(r);
%figure,imshow(n);
%figure,imshow(m);
%leye=strcat('s',num2str(i),'-',num2str(j),'leye.png');
%reye=strcat('s',num2str(i),'-',num2str(j),'reye.png');
%nose=strcat('s',num2str(i),'-',num2str(j),'nose.png');
%mouth=strcat('s',num2str(i),'-',num2str(j),'mouth.png');
%imwrite(le,[folder leye]);
%imwrite(re,[folder reye]);
%imwrite(r,'reye.jpg');
%imwrite(no,[folder nose]);
%imwrite(mo,[folder mouth]);
%k = size(bfaces,1);
%cropped = cell(1,k);

%for i=1:k
 %  cropped{k} = imcrop( bfaces(i,:));
%end
%figure;imshow(bbimg);
%for i=1:size(bbfaces,1)
 %figure;imshow(bbfaces{i});
 %end
%figure,imshow(bbox(:, 1: 4))
%figure,imshow(aface)
%figure,imshow(alefteye)
%figure,imshow(arighteye)
%figure,imshow(amouth)
%figure,imshow(anose)

% Please uncoment to run demonstration of detectRotFaceParts
%{
 img = imrotate(img,180);
 detector = buildDetector(2,2);
 [fp bbimg faces bbfaces] = detectRotFaceParts(detector,img,15,2);

 figure;imshow(bbimg);
 for i=1:size(bbfaces,1)
  figure;imshow(bbfaces{i});
 end
%}
end