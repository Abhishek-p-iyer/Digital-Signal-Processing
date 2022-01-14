%circular convolution
clc 
clear all 
close all 
x = input('enter the first sequence');
h = input('enter the second sequence ');
N1=length(x);
N2=length(h);
N=max(N1,N2);
X=[x,zeros(1,N-N1)];
H=[h,zeros(1,N-N2)];
Y=zeros(1,N);
for i = 0:N-1
    for j=0:N-1
        k=mod(i-j,N);
        Y(i+1)=Y(i+1)+(X(k+1)*H(j+1));
    end
end
disp(Y);
CC=cconv(x,h,N);
disp('circular convolution'); 
