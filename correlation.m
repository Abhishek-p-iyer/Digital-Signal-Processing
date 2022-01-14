%correlation 
clc 
clear all 
close all 
x=input('enter the first sequence');
h=input('enter the second sequence');
N1=length(x);
N2=length(h);
H=fliplr(h);
Y=zeros(1,N1+N2-1);
for i=1:N1
    for j=1:N2
        Y(i+j-1)=Y( i+j-1)+(x(i)*H(j)); 
    end 
end
disp(Y);
Corr=xcorr(x,h);
disp('Correlation'); 
