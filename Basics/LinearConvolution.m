%Linear convolution 
clc 
clear all 
 
x=input('Enter the 1st sequence');
h=input('Enter the 2nd sequence');
N1=length(x);
N2=length(h);
for i=1:N1
    for j=1:N2
        y(i,i+j-1)=x(i)*h(j);
    end 
end
y=sum(y);
disp('convoluted signal');
disp(y);
Y=conv(x,h);
disp('convoluted signal using built-in function');
disp(Y);
