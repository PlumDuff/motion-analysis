function drawFigure1(handles,theta,omega,alpha,length)
%绘制前四个图形
%handles：gui界面句柄
%axes1：角位移图像
%axes2：角速度图形
%axes3：角加速度图像
%axes4：连杆未运动时的图像
%theta\omega\alpha\是以元胞数组的形式传入该函数，因此使用时要用cell2mat()函数，将其转换为普通数组
% author: Mat
% Github: https://github.com/PlumDuff/motion-analysis

n1 = 1:361;
hd = pi/180;	%方便角度转弧度
du = 180/pi;	%方便弧度转角度
%取数
theta2 = cell2mat(theta(1));
theta3 = cell2mat(theta(2));
omega2 = cell2mat(omega(1));
omega3 = cell2mat(omega(2));
alpha2 = cell2mat(alpha(1));
alpha3 = cell2mat(alpha(2));
length1 = length.a;
length2 = length.b;
length3 = length.c;
length4 = length.d;
% length1 = length(1);
% length2 = length(2);
% length3 = length(3);
% length4 = length(4);
%角位移图像
axes(handles.axes1);					%当前操作的图像界面是axes1
plot(n1,theta2*du,n1,theta3*du,'k');	%杆2和杆3随角度变化所产生的位移图
xlabel('曲柄转角 \theta1/\circ');		% x坐标轴的标签是”曲柄转角“
ylabel('角位移/\circ');					% y坐标轴的标签是”角位移“
legend('theta2','theta3');				% 表明曲线所代表的是什么内容
grid on;								%开启网格线

%绘制角速度线图
axes(handles.axes2);					%以下注释内容同上
plot(n1,omega2,n1,omega3,'k');
xlabel('曲柄转角 \theta1/\circ');
ylabel('角速度/ rad\cdots^{-1}');
legend('omega2','omega3');
grid on;

% 绘制角加速度图
axes(handles.axes3);
plot(n1,alpha2,n1,alpha3,'k');
xlabel('曲柄转角 \theta1/\circ');
ylabel('角加速度/rad\cdots^{-2}');
legend('alpha2','alpha3');
grid on;

%绘制铰链四杆机构图形输出
axes(handles.axes4);
xt(1)=0;			% 指明杆1的坐标位置
yt(1)=0;
xt(2)= length1*cos(70* hd);		%指明杆2其顺序相连点的坐标位置
yt(2)= length1*sin(70* hd);
xt(3)= length4+length3*cos( theta3(70));	%指明杆3其顺序相连点的坐标位置
yt(3)= length3*sin( theta3(70));
xt(4)=length4;					%指明杆4其顺序相连点的坐标位置
yt(4)=0;
xt(5)=0;						%构成闭环
yt(5)=0;
hold on;
plot(xt(1),yt(1),'o');			%将这四个点用”圆圈“的形式绘制出来
plot(xt(2),yt(2),'o');
plot(xt(3),yt(3),' o');
plot(xt(4),yt(4),'o');
plot(xt,yt);					%连接这五个点，构成闭环图形
xlabel('mm');
ylabel('mm');
set(handles.axes4,'XLim',[-50 350]);	%设置x轴和y轴的坐标范围
set(handles.axes4,'YLim',[-20 200]);
grid on;