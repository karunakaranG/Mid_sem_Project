function [output]=finalmergepredict(result)
a=load('merge.mat');
data=a.ans(:,:);
b=zeros(1,90);
res=zeros(1,90);
ff=1;
dd=2;
t=4;
for i=1:90
g=a.ans(:,i);
c=cell2mat(g);
b(1,i)=min(c(:));
thre=b+20;
end
for i=1:90
  if(eq(i,t))
      ff=ff+2;
      dd=dd+2;
      t=t+3;
  end
d=a.ans(ff,i);
dc=cell2mat(d);
e=a.ans(dd,i);
ec=cell2mat(e);
%f=b(1,i);
threshold=thre(1,i);
if((dc<=threshold)||(ec<=threshold))
   res(1,i)=1;

else
    res(1,i)=0;
end
end
haa=a.ans(:,:);
yaa=cell2mat(haa);
gaa=result(:,1);
faa=cell2mat(gaa);
for j=1:90
ja=faa(:,1);
    sa=yaa(:,j);    
if(eq(ja,sa))
    
        output=res(1,j);
      break;
else
    output=0;
end
end
end