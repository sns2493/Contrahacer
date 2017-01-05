function[str] = strval(turn_ang,dir_ang,dis)
%45 = 0.5 left(22.5-67.5)
%90 = left(67.5-112.5)
%135 = 1.5 left(112.5-157.5)
%180 = u turn(157.5-202.5)
%315 = 0.5 right(292.5-337.5)
%270 = right(247.5-292.5)
%225 = 1.5 right(202.5-247.5)
%dir = 0 => turn
%dir = 1 => fwd
%dir = 2 => reverse
str = 'z';
dir = 0;
fl = 0;
if(turn_ang>=22.5 && turn_ang<67.5)
    str = 'a';%0.5 left
    fl = 1;
else
if(turn_ang>=67.5 && turn_ang<112.5)
    str = 'b';%left
    fl = 1;
else
if(turn_ang>=112.5 && turn_ang<157.5)
    str = 'c';%1.5 left
    fl = 1;
else
if(turn_ang>=157.5 && turn_ang<202.5)
    str = 'd';%u turn
    fl = 1;
else
if(turn_ang>=202.5 && turn_ang<247.5)
    str = 'e';%1.5 right
    fl = 1;
else
if(turn_ang>=247.5 && turn_ang<292.5)
    str = 'f';%right
    fl = 1;
else
if(turn_ang>=292.5 && turn_ang<337.5)
    str = 'g';%0.5 right
    fl = 1;
end
end
end
end
end
end
end
if(fl == 0 && dir_ang>=0 && dir_ang<30)
    dir = 1;
    if(dis<=0.35)
        str = 'h';%fwd low
    else
        str = 'i';%fwd high
    end
else
if(fl == 0 && dir_ang>=170 && dir_ang<190)
    dir = 2;
    if(dis<0.45)
        str = 'j';%back
    end
end
end
str
dir
turn_ang
dir_ang
dis