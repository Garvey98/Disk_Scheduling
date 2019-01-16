function y = cscan(x, task_num, head, direction)
tempx = x;
tempx = sort(tempx);
for s = 1:task_num
    if(tempx(s) > head)
        break
    end
end
if(direction == 1 && head > tempx(task_num))
    y = head - tempx(1) + tempx(task_num) - tempx(1);
elseif(direction == 1 && head <= tempx(1))
    y = tempx(task_num) - head;
elseif(direction == 1 && head > tempx(1) && head <= tempx(task_num))
    y = tempx(task_num) - head + tempx(task_num) - tempx(1) + tempx(s-1) - tempx(1);
elseif(direction == 0 && head < tempx(1))
    y = tempx(task_num) - head + tempx(task_num) - tempx(1);
elseif(direction == 0 && head > tempx(task_num))
    y = head - tempx(1);
else
    y = tempx(task_num) - tempx(1) - (tempx(s) - head) + tempx(task_num) - tempx(1);
end
end