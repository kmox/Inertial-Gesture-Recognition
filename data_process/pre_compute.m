clc;
clear all;
load A.mat;
load B.mat;
load C.mat;
load D.mat;
load one.mat;
load two.mat;
load three.mat;
load four.mat;
% changdu=10000000;

A=[];
for i=1:140
    a=[];
    %滑动平均滤波
    eval(['a(:,1)=MovingAverage(A_',num2str(i),'(:,1));'])
    eval(['a(:,2)=MovingAverage(A_',num2str(i),'(:,2));'])
    %归一化
    a=normalization(a);
    z=1;
    %重采样
    changdu=length(a);
    x=1:changdu;
    y=a(:,1);
    yy=a(:,2);
    temp=changdu/1000;
    xi=0:temp:changdu;
    yi = interp1(x,y,xi,'spline');
    yi=yi(1,1:1000);
    yj = interp1(x,yy,xi,'spline');
    yj=yj(1,1:1000);
%     %分帧
    for j=211:20:890
        
        A(i).accel(z,1)=mean(yi(1,j-10:j+20));
        A(i).accel(z,2)=mean(yj(1,j-10:j+20));

        z=z+1;
    end
    
    
   struct_A=A;

end
changdu=10000000;

A=[];
for i=1:140
    a=[];
    %滑动平均滤波
    eval(['a(:,1)=MovingAverage(B_',num2str(i),'(:,1));'])
    eval(['a(:,2)=MovingAverage(B_',num2str(i),'(:,2));'])
    %归一化
    a=normalization(a);
    z=1;
%      %重采样
    changdu=length(a);
    x=1:changdu;
    y=a(:,1);
    yy=a(:,2);
    temp=changdu/1000;
    xi=0:temp:changdu;
    yi = interp1(x,y,xi,'spline');
    yi=yi(1,1:1000);
    yj = interp1(x,yy,xi,'spline');
    yj=yj(1,1:1000);
%     %分帧
     
    for j=211:20:890
        
        A(i).accel(z,1)=mean(yi(1,j-10:j+20));
        A(i).accel(z,2)=mean(yj(1,j-10:j+20));

        z=z+1;
    end
    
   struct_B=A;

end

A=[];
for i=1:140
    a=[];
    %滑动平均滤波
    eval(['a(:,1)=MovingAverage(C_',num2str(i),'(:,1));'])
    eval(['a(:,2)=MovingAverage(C_',num2str(i),'(:,2));'])
    %归一化
    a=normalization(a);
    z=1;
%      %重采样
    changdu=length(a);
    x=1:changdu;
    y=a(:,1);
    yy=a(:,2);
    temp=changdu/1000;
    xi=0:temp:changdu;
    yi = interp1(x,y,xi,'spline');
    yi=yi(1,1:1000);
    yj = interp1(x,yy,xi,'spline');
    yj=yj(1,1:1000);
%     %分帧
     
    for j=211:20:890
        
        A(i).accel(z,1)=mean(yi(1,j-10:j+20));
        A(i).accel(z,2)=mean(yj(1,j-10:j+20));

        z=z+1;
    end
    
    struct_C=A;

end
% changdu=10000000;

A=[];
for i=1:140
    c=[];
    %滑动平均滤波
    eval(['c(:,1)=MovingAverage(D_',num2str(i),'(:,1));'])
    eval(['c(:,2)=MovingAverage(D_',num2str(i),'(:,2));'])
    %归一化
    a=normalization(c);
    z=1;
%       %重采样
    changdu=length(a);
    x=1:changdu;
    y=a(:,1);
    yy=a(:,2);
    temp=changdu/1000;
    xi=0:temp:changdu;
    yi = interp1(x,y,xi,'spline');
    yi=yi(1,1:1000);
    yj = interp1(x,yy,xi,'spline');
    yj=yj(1,1:1000);
%     %分帧
     
    for j=211:20:890
        
        A(i).accel(z,1)=mean(yi(1,j-10:j+20));
        A(i).accel(z,2)=mean(yj(1,j-10:j+20));

        z=z+1;
    end
    
    
     struct_D=A;

end

A=[];
for i=1:140
    c=[];
    %滑动平均滤波
    eval(['c(:,1)=MovingAverage(one_',num2str(i),'(:,1));'])
    eval(['c(:,2)=MovingAverage(one_',num2str(i),'(:,2));'])
    %归一化
    a=normalization(c);
    z=1;
%       %重采样
    changdu=length(a);
    x=1:changdu;
    y=a(:,1);
    yy=a(:,2);
    temp=changdu/1000;
    xi=0:temp:changdu;
    yi = interp1(x,y,xi,'spline');
    yi=yi(1,1:1000);
    yj = interp1(x,yy,xi,'spline');
    yj=yj(1,1:1000);
%     %分帧
     
    for j=211:20:890
        
        A(i).accel(z,1)=mean(yi(1,j-10:j+20));
        A(i).accel(z,2)=mean(yj(1,j-10:j+20));
        z=z+1;
    end
    
       struct_one=A;

end

A=[];
for i=1:140
    c=[];
    %滑动平均滤波
    eval(['c(:,1)=MovingAverage(two_',num2str(i),'(:,1));'])
    eval(['c(:,2)=MovingAverage(two_',num2str(i),'(:,2));'])
    %归一化
    a=normalization(c);
    z=1;
%       %重采样
    changdu=length(a);
    x=1:changdu;
    y=a(:,1);
    yy=a(:,2);
    temp=changdu/1000;
    xi=0:temp:changdu;
    yi = interp1(x,y,xi,'spline');
    yi=yi(1,1:1000);
    yj = interp1(x,yy,xi,'spline');
    yj=yj(1,1:1000);
%     %分帧
     
    for j=211:20:890
        
        A(i).accel(z,1)=mean(yi(1,j-10:j+20));
        A(i).accel(z,2)=mean(yj(1,j-10:j+20));

        z=z+1;
    end
    
   struct_two=A;

end
A=[];
for i=1:140
    c=[];
    %滑动平均滤波
    eval(['c(:,1)=MovingAverage(three_',num2str(i),'(:,1));'])
    eval(['c(:,2)=MovingAverage(three_',num2str(i),'(:,2));'])
    %归一化
    a=normalization(c);
    z=1;
%       %重采样
    changdu=length(a);
    x=1:changdu;
    y=a(:,1);
    yy=a(:,2);
    temp=changdu/1000;
    xi=0:temp:changdu;
    yi = interp1(x,y,xi,'spline');
    yi=yi(1,1:1000);
    yj = interp1(x,yy,xi,'spline');
    yj=yj(1,1:1000);
%     %分帧
     
    for j=211:20:890
        
        A(i).accel(z,1)=mean(yi(1,j-10:j+20));
        A(i).accel(z,2)=mean(yj(1,j-10:j+20));

        z=z+1;
    end
    
   struct_three=A;

end
A=[];
for i=1:140
    c=[];
    %滑动平均滤波
    eval(['c(:,1)=MovingAverage(four_',num2str(i),'(:,1));'])
    eval(['c(:,2)=MovingAverage(four_',num2str(i),'(:,2));'])
    %归一化
    a=normalization(c);
    z=1;
%       %重采样
    changdu=length(a);
    x=1:changdu;
    y=a(:,1);
    yy=a(:,2);
    temp=changdu/1000;
    xi=0:temp:changdu;
    yi = interp1(x,y,xi,'spline');
    yi=yi(1,1:1000);
    yj = interp1(x,yy,xi,'spline');
    yj=yj(1,1:1000);
%     %分帧
     
    for j=211:20:890
        
        A(i).accel(z,1)=mean(yi(1,j-10:j+20));
        A(i).accel(z,2)=mean(yj(1,j-10:j+20));

        z=z+1;
    end
    
   struct_four=A;

end
struct=[struct_A,struct_B,struct_C,struct_D,struct_one,struct_two,struct_three,struct_four]
save struct.mat struct_A struct_B struct_C struct_D struct_one struct_two struct_three struct_four

