clear;clc;
track_num = 10000;
task_num = 50;

x = randi([1,track_num],1,task_num);
R = poissrnd(0.2,1,task_num);
pro = [];
for i = 1:task_num
    pro = [pro, x(i)];
    temp = R(i);
    if(temp > 0)
        for j = 1:temp
            path = x(i) + j;
            if(path <= track_num)
                pro = [pro, path];
            end
        end
    end
end

head = unidrnd(track_num);
direction = randi([0,1],1,1);
len = length(pro);

Total_time1 = fcfs(pro, len, head);
Total_time2 = sstf(pro, len, head);
Total_time3 = scan(pro, len, head, direction);
Total_time4 = cscan(pro, len, head, direction);
move = [Total_time1, Total_time2, Total_time3, Total_time4];
move_ave = move / len;
bar(move_ave);