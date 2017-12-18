function [ result ] = equlidean( co,setco )
a=co-setco;
b=a.^2;
c=sum(b);
           S=sum(c);
result=sqrt(S);

end

