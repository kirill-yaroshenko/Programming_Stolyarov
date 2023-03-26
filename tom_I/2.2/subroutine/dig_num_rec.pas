program DiginNumber;    { dig_num_rec.pas }

procedure PrintNumber(n	: longint);
begin
   if n > 0 then
      begin
	 PrintNumber(n div 10);
	 write(n mod 10, ' ')
      end
end;

function DoReverseNum (n,m	: longint) : longint;
begin
   if n = 0 then
      DoReverseNum := m
   else
      DoReverseNum := DoReverseNum(n div 10, m * 10 + n mod 10)
end;

function ReverseNum(n : longint): longint;
begin
   ReverseNum := DoReverseNum(n, 0)
end;

var
   x, y, z : longint;
begin
   write('x =');
   read(x);
   PrintNumber(x);
   writeln;
   write('y =');
   read(y);
   z := ReverseNum(y);
   writeln(z);
   writeln(ReverseNum(y));
end.
