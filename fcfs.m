function y = fcfs(x, task_num, head)
y = 0;
for t = 1:task_num
    y = y + abs(x(t) - head);
    head = x(t);
end
end