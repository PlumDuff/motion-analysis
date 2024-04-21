function [theta,omega,alpha] = analysis_data(theta1,omega1,alpha1,length1,length2,length3,length4)
% analysis_data 通过现有的数据，计算得出杆的位移、速度、加速度
% theta 角位移
% omega 角速度
% alpha 加速度
% theta1 主动杆1和x轴方向的夹角
% omega1 主动杆的 匀角速度
% length1 杆1的长度
% length2 杆2的长度
% length3 杆3的长度
% length4 杆4的长度
% author: Mat
% Github: https://github.com/PlumDuff/motion-analysis

%%
%计算角位移 theta2 和 theta3
%构建辅助线 guide_line
guide_line = sqrt((length1^2)+(length4^2)-(2*length1*length4*(cos(theta1))));
%构建辅助角
guide_angle_1 = asin((length1./guide_line)*sin(theta1));
guide_angle_2 = acos(((guide_line^2)+(length3^2)-(length2^2))/(2*guide_line*length3));
if guide_angle_2 < 0
    guide_angle_2 = guide_angle_2 + pi;
end
theta3 = pi - guide_angle_1 - guide_angle_2;
theta2 = asin((length3*sin(theta3)-length1*sin(theta1))/length2);
%可得到角位移
theta = [theta2;theta3];

%%
%计算角速度 omega
A = [-length2*sin(theta2),length3*sin(theta3);
      length2*cos(theta2),-length3*cos(theta3)];
B = [length1*sin(theta1);
    -length1*cos(theta1)];
omega = A\(omega1*B);  %修改
%经计算可分别得到 杆2的角速度 omega2，和杆3的角速度 omega3
omega2 = omega(1); 
omega3 = omega(2);

%%
%计算从动件的角加速度 alpha
A = [-length2*sin(theta2),length3*sin(theta3);
      length2*cos(theta2),-length3*cos(theta3)];
At = [-1*omega2*length2*cos(theta2),omega3*length3*cos(theta3);
      -1*omega2*length2*sin(theta2),omega3*length3*sin(theta3)];
B = [length1*sin(theta1);
    -length1*cos(theta1)];      %机构原动件参数
Bt = [omega1*length1*cos(theta1);
      omega1*length1*sin(theta1)];
alpha = A\(-At*omega+omega1*Bt+alpha1*B);  %修改

