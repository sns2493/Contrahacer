function[turn_ang,dir_ang,dis] = todomath(cenbot1,vecbot1,cenbot2,vecbot2)
vec1 = vecbot1(1) + 1i*vecbot1(2);
vec1 = vec1/abs(vec1);
vec2 = vecbot2(1) + 1i*vecbot2(2);
vec2 = vec2/abs(vec2);
ang1 = atan2(-imag(vec1),real(vec1))*180/pi;
ang2 = atan2(-imag(vec2),real(vec2))*180/pi;
turn_ang = ang2 - ang1;
if(turn_ang<0)
    turn_ang = 360+turn_ang;
end
disvec = cenbot2 - cenbot1;
dis = ((disvec(1)^2)+(disvec(2)^2))^0.5;
vec_game = cenbot2 - cenbot1;
vec_dir = vec_game(1) + 1i*vec_game(2);
vec_dir = vec_dir/abs(vec_dir);
ang3 = atan2(-imag(vec_dir),real(vec_dir))*180/pi;
dir_ang = ang3 - ang1;
dir_ang = abs(dir_ang);