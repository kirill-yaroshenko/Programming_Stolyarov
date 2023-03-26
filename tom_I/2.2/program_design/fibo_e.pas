program Fibo;            { fibo_e.pas }

function Fibonacci(n : integer): longint;
var
   i	   : integer;
   p, q, r : longint;
begin
   if n <= 0 then
   begin
      Fibonacci := 0;
      exit
   end;
   q := 0;
   r := 1;
   for i := 2 to n do
   begin
      p := q;
      q := r;
      r := p + q
   end;
   Fibonacci := r
end;

var
   x, y	: longint;
begin
   write('Номер элемента : ');
   read(x);
   y := Fibonacci(x);
   writeln('Значение элемента : ', y);
   writeln(Fibonacci(x))
end.
