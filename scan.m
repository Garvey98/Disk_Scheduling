function y = scan(x, task_num, head, direction)
tempx = x;
tempx = sort(tempx);
if(direction == 1 && head > tempx(1))
    y = abs(tempx(task_num) - head) + tempx(task_num) - tempx(1);
elseif(direction == 1 && head <= tempx(1))
    y = tempx(task_num) - head;
elseif(direction == 0 && head < tempx(task_num))
    y = abs(head - tempx(1)) + tempx(task_num) - tempx(1);
else
    y = head - tempx(1);
end
end