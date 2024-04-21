% ������
% length1 ��1�ĳ���
% length2 ��2�ĳ���
% length3 ��3�ĳ���
% length4 ��4�ĳ���
% omega1 ��ʼ �����˵Ľ��ٶ�
% alpha1  ��ʼ �����˵ĽǼ��ٶ�
% theta ��λ��
% omega ���ٶ�
% alpha ���ٶ�
% author: Mat
% Github: https://github.com/PlumDuff/motion-analysis

%%
% 1��������֪����
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
% 2�������Ӻ��������ĸ˻�����λ�ơ��ٶȡ����ٶ�
for n1 = 1:361
	theta1 = (n1-1)*hd;		% ���Ƕ�ת��Ϊ������
	[theta,omega,alpha] = analysis_data(theta1,omega1,alpha1,length1,length2,length3,length4);
	theta2(n1) = theta(1);		% ��2�Ľ�λ��
	theta3(n1) = theta(2);		% ��3�Ľ�λ��
	omega2(n1) = omega(1);		% ��2�Ľ��ٶ�
	omega3(n1) = omega(2);		% ��3�Ľ��ٶ�
	alpha2(n1) = alpha(1);	% ��2�ĽǼ��ٶ�
	alpha3(n1) = alpha(2);	% ��3�ĽǼ��ٶ�
end

%%
% 3�������������ó������ݣ��������Ӧ��ͼ��
figure(1);		%ͼ��1
n1 = 1:361;
subplot(2,2,1);	% ����ͼ�����Ϊ�ĸ�����
% ����λ����ͼ
plot(n1,theta2*du,n1,theta3*du,'k');	% ��2�͸�3��Ƕȱ仯��������λ��ͼ
title('��λ����ͼ');
xlabel('����ת�� \theta1/\circ');
ylabel('��λ��/\circ');
grid on;
hold on;
% text(140,170,'\theta3');
% text(140,10,'theta2');

%���ƽ��ٶ���ͼ
subplot(2,2,2);
plot(n1,omega2,n1,omega3,'k');
title('���ٶ���ͼ');
xlabel('����ת�� \theta1/\circ');
ylabel('���ٶ�/ rad\cdots^{-1}');
grid on;
hold on;
% text(250,130,'\omega2');
% text(130,165,'\omega3');

% ���ƽǼ��ٶ�ͼ
subplot(2,2,3);
plot(n1,alpha2,n1,alpha3,'k');
title('�Ǽ��ٶ���ͼ');
xlabel('����ת�� \theta1/\circ');
ylabel('�Ǽ��ٶ�/rad\cdots^{-2}');
grid on;
hold on;
% text(230,2e4,'\alpha2');
% text(30,7e4,'alpha3');

%���ƽ����ĸ˻���ͼ�����
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
title("�����ĸ�")
xlabel( 'mm')
ylabel(' mm' )
axis([- 50 350 -20 200]);

%%
% 4�������ĸ˻����˶�����
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
title('�����ĸ˻���'); 
xlabel( 'mm')
ylabel(' mm' )
m(j) = getframe;
end
movie(m);
return;

