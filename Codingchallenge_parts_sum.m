clc 
clear 
disp ('Saori Kimura');
disp( 'Helgen Coding Challenge')
disp ('This program will take as parameter a list of numbers or values and return a list of the sums of its parts')

%The following section of code is used if you want to introduce the array
%in the following format [n, n1, ...] or [n n1 ...]
insert=0;

while insert<1
ls = input ("Introduce your array(1xn)= ");
n= length(ls);
n2=n+1;
A=n2;
B=-1;
ls1 = zeros(1,n);
Result = zeros (1,n);
disp( 'Your matrix: ') 
disp (ls);
answer = input ('Is this correct? (answer: "yes" or "no"): \', 's');
if strcmp('no',answer)
    insert=0;
else
    insert=1;
end
end 

%This section of the code you can use if you want to insert
%the values of the array one by one without the format (if you want to use
%this code, then you have to erase or comment the section above)
%{
n =input ("Introduce the size of your array(1xn)= ");
insert=0;
n2=n+1;
A=n2;
B=-1;
ls = zeros(1,n);
ls1 = zeros(1,n);
Result = zeros (1,n);

while insert<1
disp( 'Insert again the values of the matrix (from left to right)')
ls = zeros(1,n);
for a=1:1
    for b=1:n
      ls (a,b)= input ('\');
    end
end
disp( 'Your matrix: ') 
disp (ls);
answer = input ('Is this correct? (answer: "yes" or "no"): \', 's');
if strcmp('no',answer)
    insert=0;
else
    insert=1;
end
end 
%}

% This section of the code shifts clockwise the elements within the array,
% then it extracts the part of the array needed, sums its part and 
% adds it to the final array 

for a=1:1
    for b=1:n2
    A=A-1;
    B=B+1;
    k=1;
    for i=B+1:n
        ls1(:,k)=ls(:,i);
        k=k+1;
    end
    for i=1:B
        ls1(:,k)=ls(:,i);
        k=k+1;
    end
    ls2= ls1(1:A);
    disp (ls2)
    Result (a,b)= sum (ls2);
    end
end

%This section of code works the same way as the one above, but it uses a 
%function called circshift (if you want to use this code instead, then you 
%have to erase or comment the section of the code above)
%{
for a=1:1
    for b=1:n2
    A=A-1;
    B=B+1;
    ls1=circshift(ls,[0,-B]);
    ls2= ls1(1:A);
    disp (ls2)
    Result (a,b)= sum (ls2);
    end
end
%}
    disp( 'The resulting matrix is: ') 
    disp (Result) 
  