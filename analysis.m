function[resul]=analysis(image1,image2,image3,image4)
result=cell(14,1);

%lee=1;
%ree=2;
%nn=3;
%mm=4;
 %for iter=1:30
%for i=3:5
   count=1;
%image1=strcat('C:\Users\karuna\Documents\MATLAB\new\analysis\final\testing\','s',num2str(iter),'-',num2str(i),'leye.png');
%image2=strcat('C:\Users\karuna\Documents\MATLAB\new\analysis\final\testing\','s',num2str(iter),'-',num2str(i),'reye.png');

 %  image3=strcat('C:\Users\karuna\Documents\MATLAB\new\analysis\final\testing\','s',num2str(iter),'-',num2str(i),'nose.png');
%image4=strcat('C:\Users\karuna\Documents\MATLAB\new\analysis\final\testing\','s',num2str(iter),'-',num2str(i),'mouth.png');
%image1=('C:\Users\karuna\Documents\MATLAB\finalreview\s1-3leye.png');
%image2=('C:\Users\karuna\Documents\MATLAB\finalreview\s1-3reye.png');
%image3=('C:\Users\karuna\Documents\MATLAB\finalreview\s1-3nose.png');
%image4=('C:\Users\karuna\Documents\MATLAB\finalreview\s1-3mouth.png');
%a=imread(image1);
%b=imread(image2);
%c=imread(image3);
%d=imread(image4);
leye=trail(image1);
reye=trail(image2);
nose=trail(image3);
mouth=trail(image4);
%leyeco=cou(leye);
%reyeco=cou(reye);
%noseco=cou(nose);
%mouthco=cou(mouth);

for iter1=1:30
    for j=1:2
    if(count<=60)
image5=strcat('C:\Users\karuna\Documents\MATLAB\finalreview\finalreview1\trained\','s',num2str(iter1),'-',num2str(j),'leye.png');
image6=strcat('C:\Users\karuna\Documents\MATLAB\finalreview\finalreview1\trained\','s',num2str(iter1),'-',num2str(j),'reye.png');

image7=strcat('C:\Users\karuna\Documents\MATLAB\finalreview\finalreview1\trained\','s',num2str(iter1),'-',num2str(j),'nose.png');
image8=strcat('C:\Users\karuna\Documents\MATLAB\finalreview\finalreview1\trained\','s',num2str(iter1),'-',num2str(j),'mouth.png');
a1=imread(image5);
b1=imread(image6);
c1=imread(image7);
d1=imread(image8);
leyeset=trail(a1);
reyeset=trail(b1);
noseset=trail(c1);
mouthset=trail(d1);
%leyesetco=cou(leyeset);
%reyesetco=cou(reyeset);
%nosesetco=cou(noseset);
%mouthsetco=cou(mouthset);

    le=equlidean(leye,leyeset);
    re=equlidean(reye,reyeset);
    n=equlidean(nose,noseset);
    m=equlidean(mouth,mouthset);
   
       rek=le+re+n+m./4;    

    %ey(~isfinite(ey))=0;
%no(~isfinite(no))=0;
%mo(~isfinite(mo))=0;
%ey(isnan(ey))=0;
%no(isnan(no))=0;
%mo(isnan(mo))=0;
%qw=sum(ey);
%rt=sum(no);
%uy=sum(mo);
    
     result{count,1}=rek;
     %result{count,ree}=re;
     %result{count,nn}=n;
    
     %result{count,mm}=m;
  count=count+1;
    end
    end
   

end
    %lee=lee+1;
    %ree=ree+4;
    %nn=nn+4;
    %mm=mm+4;
%end

%end
output=finalmergepredict(result);
if(eq(output,1))
    resul=1;
else
    resul=0;
end
end