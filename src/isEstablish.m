function num = isEstablish(length1,length2,length3,length4)
% ��ת�����ڵ�����
% ��̸˳���+��̸˳��� <= �������˵ĳ���֮��
% author: Mat
% Github: https://github.com/PlumDuff/motion-analysis

find_min = length1;
find_max = length1;
len = [length1,length2,length3,length4];	%�����˵ĳ��ȴ��������
mark_max = 1;
mark_min = 1;
for n=2:4
	if(find_max<len(n))	%�ҳ��ĸ����е����ֵ���Լ���ǰ�˵�λ��
		find_max = len(n);
		mark_max = n;
	end
	if(find_min>len(n))	%�ҳ��ĸ����е���Сֵ���Լ���ǰ�˵�λ��
		find_min = len(n);
		mark_min = n;
	end
end

%�жϸø��Ƿ��ܳ���
sum_other = 0;
sum_bestvalue = find_max + find_min;
for m=1:4
	if(m==mark_max||m==mark_min)    %������ֵ
		continue;
	else
		sum_other = sum_other + len(m);
	end
end
%��ӡ����
% disp(sum_other)
% disp(sum_bestvalue)

if(sum_bestvalue<=sum_other)
% 	fprintf('����');
%�ڸ�����������ǰ����
	%�������ܸ˺ͻ����б���һ������̸ˣ�����Թ���������ҡ�˻������͡�˫����ҡ�˻�����
	%������������������ṹ��һ����˫ҡ�˻�����
	% num ֵΪ0������
	% num ֵΪ1������ҡ�˻������͡�˫����ҡ�˻�����
	% num ֵΪ2��˫ҡ�˻���
	if(mark_min==2)	%��̸���2�Ÿˣ�˫ҡ�˻���
		num = 2;
	else
		num = 1;
	end
else
% 	fprintf('����ʧ�ܣ�');
    num = 0;    % ����0�������������ܹ����ĸ��˶�����
end