function drawFigure1(handles,theta,omega,alpha,length)
%����ǰ�ĸ�ͼ��
%handles��gui������
%axes1����λ��ͼ��
%axes2�����ٶ�ͼ��
%axes3���Ǽ��ٶ�ͼ��
%axes4������δ�˶�ʱ��ͼ��
%theta\omega\alpha\����Ԫ���������ʽ����ú��������ʹ��ʱҪ��cell2mat()����������ת��Ϊ��ͨ����
% author: Mat
% Github: https://github.com/PlumDuff/motion-analysis

n1 = 1:361;
hd = pi/180;	%����Ƕ�ת����
du = 180/pi;	%���㻡��ת�Ƕ�
%ȡ��
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
%��λ��ͼ��
axes(handles.axes1);					%��ǰ������ͼ�������axes1
plot(n1,theta2*du,n1,theta3*du,'k');	%��2�͸�3��Ƕȱ仯��������λ��ͼ
xlabel('����ת�� \theta1/\circ');		% x������ı�ǩ�ǡ�����ת�ǡ�
ylabel('��λ��/\circ');					% y������ı�ǩ�ǡ���λ�ơ�
legend('theta2','theta3');				% �����������������ʲô����
grid on;								%����������

%���ƽ��ٶ���ͼ
axes(handles.axes2);					%����ע������ͬ��
plot(n1,omega2,n1,omega3,'k');
xlabel('����ת�� \theta1/\circ');
ylabel('���ٶ�/ rad\cdots^{-1}');
legend('omega2','omega3');
grid on;

% ���ƽǼ��ٶ�ͼ
axes(handles.axes3);
plot(n1,alpha2,n1,alpha3,'k');
xlabel('����ת�� \theta1/\circ');
ylabel('�Ǽ��ٶ�/rad\cdots^{-2}');
legend('alpha2','alpha3');
grid on;

%���ƽ����ĸ˻���ͼ�����
axes(handles.axes4);
xt(1)=0;			% ָ����1������λ��
yt(1)=0;
xt(2)= length1*cos(70* hd);		%ָ����2��˳�������������λ��
yt(2)= length1*sin(70* hd);
xt(3)= length4+length3*cos( theta3(70));	%ָ����3��˳�������������λ��
yt(3)= length3*sin( theta3(70));
xt(4)=length4;					%ָ����4��˳�������������λ��
yt(4)=0;
xt(5)=0;						%���ɱջ�
yt(5)=0;
hold on;
plot(xt(1),yt(1),'o');			%�����ĸ����á�ԲȦ������ʽ���Ƴ���
plot(xt(2),yt(2),'o');
plot(xt(3),yt(3),' o');
plot(xt(4),yt(4),'o');
plot(xt,yt);					%����������㣬���ɱջ�ͼ��
xlabel('mm');
ylabel('mm');
set(handles.axes4,'XLim',[-50 350]);	%����x���y������귶Χ
set(handles.axes4,'YLim',[-20 200]);
grid on;