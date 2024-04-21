function num = isEstablish(length1,length2,length3,length4)
% 周转副存在的条件
% 最短杆长度+最短杆长度 <= 其余两杆的长度之和
% author: Mat
% Github: https://github.com/PlumDuff/motion-analysis

find_min = length1;
find_max = length1;
len = [length1,length2,length3,length4];	%将各杆的长度打包成数组
mark_max = 1;
mark_min = 1;
for n=2:4
	if(find_max<len(n))	%找出四个杆中的最大值，以及当前杆的位置
		find_max = len(n);
		mark_max = n;
	end
	if(find_min>len(n))	%找出四个杆中的最小值，以及当前杆的位置
		find_min = len(n);
		mark_min = n;
	end
end

%判断该杆是否能成立
sum_other = 0;
sum_bestvalue = find_max + find_min;
for m=1:4
	if(m==mark_max||m==mark_min)    %跳过最值
		continue;
	else
		sum_other = sum_other + len(m);
	end
end
%打印测试
% disp(sum_other)
% disp(sum_bestvalue)

if(sum_bestvalue<=sum_other)
% 	fprintf('成立');
%在改条件成立的前提下
	%满足连架杆和机架中必有一杆是最短杆，则可以构建“曲柄摇杆机构”和“双曲柄摇杆机构”
	%若不满足上条件，则会构建一个”双摇杆机构“
	% num 值为0，报错
	% num 值为1，曲柄摇杆机构”和“双曲柄摇杆机构”
	% num 值为2，双摇杆机构
	if(mark_min==2)	%最短杆是2号杆，双摇杆机构
		num = 2;
	else
		num = 1;
	end
else
% 	fprintf('构建失败！');
    num = 0;    % 返回0代表不成立，不能构建四杆运动机构
end