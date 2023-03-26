program qae;

function quadratic(a, b, c : real; var x1, x2 : real) : boolean;
var
   d : real;
begin
   if a=0 then
   begin
      quadratic := false;
      exit
   end;
   d := b*b - 4*a*c;
   if d < 0 then
   begin
      quadratic := false;
      exit
   end;
   d := sqrt(d);
   x1 := (-b - d) / (2*a);
   x2 := (-b + d) / (2*a);
   quadratic := true
end;
 
var a, b, c, x1, x2 : real;
begin
   write('Enter a= ');
   readln(a);
   write('Enter b= ');
   readln(b);
   write('Enter c= ');
   readln(c);
   if quadratic(a, b, c, x1, x2 ) then
      writeln('Solution found x1 = ', x1:0:2, '  x2 = ', x2:0:2)
   else
      writeln('There is no solution')
end.
