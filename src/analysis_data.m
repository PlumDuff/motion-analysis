function [theta,omega,alpha] = analysis_data(theta1,omega1,alpha1,length1,length2,length3,length4)
% analysis_data ͨ�����е����ݣ�����ó��˵�λ�ơ��ٶȡ����ٶ�
% theta ��λ��
% omega ���ٶ�
% alpha ���ٶ�
% theta1 ������1��x�᷽��ļн�
% omega1 �����˵� �Ƚ��ٶ�
% length1 ��1�ĳ���
% length2 ��2�ĳ���
% length3 ��3�ĳ���
% length4 ��4�ĳ���
% author: Mat
% Github: https://github.com/PlumDuff/motion-analysis

%%
%�����λ�� theta2 �� theta3
%���������� guide_line
guide_line = sqrt((length1^2)+(length4^2)-(2*length1*length4*(cos(theta1))));
%����������
guide_angle_1 = asin((length1./guide_line)*sin(theta1));
guide_angle_2 = acos(((guide_line^2)+(length3^2)-(length2^2))/(2*guide_line*length3));
if guide_angle_2 < 0
    guide_angle_2 = guide_angle_2 + pi;
end
theta3 = pi - guide_angle_1 - guide_angle_2;
theta2 = asin((length3*sin(theta3)-length1*sin(theta1))/length2);
%�ɵõ���λ��
theta = [theta2;theta3];

%%
%������ٶ� omega
A = [-length2*sin(theta2),length3*sin(theta3);
      length2*cos(theta2),-length3*cos(theta3)];
B = [length1*sin(theta1);
    -length1*cos(theta1)];
omega = A\(omega1*B);  %�޸�
%������ɷֱ�õ� ��2�Ľ��ٶ� omega2���͸�3�Ľ��ٶ� omega3
omega2 = omega(1); 
omega3 = omega(2);

%%
%����Ӷ����ĽǼ��ٶ� alpha
A = [-length2*sin(theta2),length3*sin(theta3);
      length2*cos(theta2),-length3*cos(theta3)];
At = [-1*omega2*length2*cos(theta2),omega3*length3*cos(theta3);
      -1*omega2*length2*sin(theta2),omega3*length3*sin(theta3)];
B = [length1*sin(theta1);
    -length1*cos(theta1)];      %����ԭ��������
Bt = [omega1*length1*cos(theta1);
      omega1*length1*sin(theta1)];
alpha = A\(-At*omega+omega1*Bt+alpha1*B);  %�޸�

