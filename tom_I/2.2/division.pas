program division;
var
   x, y : qword;
begin
   write('Делимое: ');
   readln(x);
   write('Делитель: ');
   read(y);
   writeln(x / y);
   writeln(x div y);
   writeln(x mod y, ' - остаток');
   if x mod y = 0 then
      writeln(x mod y = 0, ' - чётное');
   if x mod y = 1 then
      writeln(x mod y = 1, ' - нечётное');
end.
