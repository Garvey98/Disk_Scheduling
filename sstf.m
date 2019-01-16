function y = sstf(x, task_num, head)
tempx = x;
tempx = sort(tempx);
for s = 1:task_num
    if(tempx(s) > head)
        break
    end
end

y = 0;
t = s;
s = s-1;
for i = 1:task_num
    if(s == 0 && t <= task_num)
        y = y + abs((tempx(t)-head));
        head = tempx(t);
        t = t + 1;
    elseif(s > 0 && t == task_num + 1)
        y = y + abs((tempx(s)-head));
        head = tempx(s);
        s = s - 1;
    elseif( abs((tempx(s)-head)) > abs((tempx(t)-head)) )
        y = y + abs((tempx(t)-head));
        head = tempx(t);
        t = t + 1;
    else
        y = y + abs((tempx(s)-head));
        head = tempx(s);
        s = s - 1;
    end
end
end