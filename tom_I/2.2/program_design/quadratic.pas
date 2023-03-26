program Q;         { quadratic.pas }

procedure quadratic(a, b, c	: real; var ok : boolean; var x1, x2 : real);
var
   d : real;
begin
   if a = 0 then
      ok := false
   else
   begin
      d := b*b - 4*a*c;
      if d < 0 then
	 ok := false
      else
      begin
	 d := sqrt(d);
	 x1 := (-b - d) / (2*a);
	 x2 := (-b + d) / (2*a);
	 ok := true
      end
   end
end;

procedure quadratic1(a, b, c     : real; var ok : boolean; var x1, x2 : real);
var
   d : real;
begin
   if a = 0 then
   begin
      ok := false;
      exit
   end;
   d := b*b - 4*a*c;
   if d < 0 then
   begin
      ok := false;
      exit
   end;
   d := sqrt(d);
   x1 := (-b - d) / (2*a);
   x2 := (-b + d) / (2*a);
   ok := true
end;

procedure quadratic2(a, b, c     : real; var ok : boolean; var x1, x2 : real);

var
   d : real;
begin
   ok := false;
   if a = 0 then
      exit;
   d := b*b - 4*a*c;
   if d < 0 then
      exit;
   d := sqrt(d);
   x1 := (-b - d) / (2*a);
   x2 := (-b + d) / (2*a);
   ok := true
end;

procedure quad(a, b, c, d, x1, x2 : real);
begin
   writeln('Квадратное уравнение вида: ax² + bx + c = 0');
   writeln('Введите a, b, c: ');
   readln(a, b, c);
   writeln(a:4:2, 'x² + ', b:4:2, ' x + ', c:4:2, ' = 0 ');
   d := b*b-4*a*c;
   writeln('D = ', d:4:2);
   if d < 0 then
      writeln('D < 0, уравнение не имеет смысла')
   else
      if d = 0 then
	 begin
	    x1 := -b/(2*a);
	    writeln('x = ', x1);
	 end
      else
	 begin
	    x1 := (-b - sqrt(d)) / (2*a);
	    x2 := (-b + sqrt(d)) / (2*a);
	    writeln('x1 = ', x1:4:2, '; ', 'x2 = ', x2:4:2);
	 end;
end;

var                                                                                          
   a, b, c, x1, x2, z : real;                                                                
   ok                 : boolean;                                                             
begin
   quad(a, b, c, z, x1, x2);
   read(a, b, c);
   writeln(a:4:2, 'x²+', b:4:2, 'x+ ', c:4:2, ' = 0');
   quadratic(a, b, c, ok, x1, x2);
   writeln('x1 =', x1:4:2, '; ', 'x2 =',  x2:4:2, ok);
   quadratic1(a, b, c, ok, x1, x2);
   writeln('x1 = (', x1, ') ; ', 'x2 = (', x2, ');', ok);
   quadratic2(a, b, c, ok, x1, x2);
   writeln('x1 =', x1:3:3, '; ', 'x2 =',  x2:3:3, ok)
end.   
