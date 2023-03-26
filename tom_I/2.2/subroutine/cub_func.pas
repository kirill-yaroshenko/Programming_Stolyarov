program cube_func;

function Cube(x	: real) : real;
begin
   Cube := x * x * x
end;

procedure powers(    x : real; var quad, cube, fourth, fifth : real);
begin
   quad := x * x;
   cube := quad * x;
   fourth := cube * x;
   fifth := fourth * x
end;

var
   x, p, q, r, t, y : real;
begin
   write('x = ');
   read(x);
   x := Cube(x);
   writeln('f(x**2) = ', x:8:2);
   write('y = ');
   read(y);
   powers(y, p, q, r, t);
   writeln('proc_powers = квадрат :', p:5:2, '; ',  'куб :', q:5:2, '; ',  'четвёртая степень :', r:5:2, '; ',  'пятая степень :', t:5:2, ';')
end.
