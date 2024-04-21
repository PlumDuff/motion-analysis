% 主程序
% length1 杆1的长度
% length2 杆2的长度
% length3 杆3的长度
% length4 杆4的长度
% omega1 初始 主动杆的角速度
% alpha1  初始 主动杆的角加速度
% theta 角位移
% omega 角速度
% alpha 加速度
% author: Mat
% Github: https://github.com/PlumDuff/motion-analysis

%%
% 1、输入已知数据
clear;
length1 = 101.6;
length2 = 254;
length3 = 177.8;
length4 = 304.8;
omega1 = 250;
alpha1 = 0;
hd = pi/180;
du = 180/pi;

%%
% 2、调用子函数计算四杆机构的位移、速度、加速度
for n1 = 1:361
	theta1 = (n1-1)*hd;		% 将角度转换为弧度制
	[theta,omega,alpha] = analysis_data(theta1,omega1,alpha1,length1,length2,length3,length4);
	theta2(n1) = theta(1);		% 杆2的角位移
	theta3(n1) = theta(2);		% 杆3的角位移
	omega2(n1) = omega(1);		% 杆2的角速度
	omega3(n1) = omega(2);		% 杆3的角速度
	alpha2(n1) = alpha(1);	% 杆2的角加速度
	alpha3(n1) = alpha(2);	% 杆3的角加速度
end

%%
% 3、根据上面计算得出的数据，绘制相对应的图形
figure(1);		%图框1
n1 = 1:361;
subplot(2,2,1);	% 将绘图区域分为四个区域
% 绘制位移线图
plot(n1,theta2*du,n1,theta3*du,'k');	% 杆2和杆3随角度变化所产生的位移图
title('角位移线图');
xlabel('曲柄转角 \theta1/\circ');
ylabel('角位移/\circ');
grid on;
hold on;
% text(140,170,'\theta3');
% text(140,10,'theta2');

%绘制角速度线图
subplot(2,2,2);
plot(n1,omega2,n1,omega3,'k');
title('角速度线图');
xlabel('曲柄转角 \theta1/\circ');
ylabel('角速度/ rad\cdots^{-1}');
grid on;
hold on;
% text(250,130,'\omega2');
% text(130,165,'\omega3');

% 绘制角加速度图
subplot(2,2,3);
plot(n1,alpha2,n1,alpha3,'k');
title('角加速度线图');
xlabel('曲柄转角 \theta1/\circ');
ylabel('角加速度/rad\cdots^{-2}');
grid on;
hold on;
% text(230,2e4,'\alpha2');
% text(30,7e4,'alpha3');

%绘制铰链四杆机构图形输出
subplot(2,2,4);
x(1)=0;
y(1)=0;
x(2)= length1*cos(70* hd);
y(2)= length1*sin(70* hd);
x(3)=length4 + length3*cos( theta3(70));
y(3)= length3*sin( theta3(70));
x(4)=length4;
y(4)=0;
x(5)=0;
y(5)=0;
plot(x,y);
grid on; hold on;
plot(x(1),y(1),'o');
plot(x(2),y(2),'o');
plot(x(3),y(3),' o');
plot(x(4),y(4),'o');
title("铰链四杆")
xlabel( 'mm')
ylabel(' mm' )
axis([- 50 350 -20 200]);

%%
% 4、铰链四杆机构运动仿真
figure(2);
% m = movie(20);
m = moviein(20) ;
j=0;
for n1= 1:5 :360
j=j+1;
clf;
x(1)=0;
y(1)=0;
x(2)=length1* cos((n1 - 1)*hd);
y(2)=length1* sin((n1 - 1)*hd);
x(3)=length4+length3 * cos(theta3(n1));
y(3)= length3* sin( theta3(n1));
x(4)=length4;
y(4)=0;
x(5)=0;
y(5)=0;
plot(x,y);
grid on;hold on;
plot(x(1),y(1),'o');
plot(x(2),y(2),'o');
plot(x(3),y(3),'o');
plot(x(4),y(4),'o');
axis([-150 350   -150 200]);
title('铰链四杆机构'); 
xlabel( 'mm')
ylabel(' mm' )
m(j) = getframe;
end
movie(m);
return;

