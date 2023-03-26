program po_bit;
var
   x, y : integer;
   a, b, c, d, e	: byte;
begin
   x := 75;
   y := not x;
   writeln(y);
   a := 42;
   b := 166;
   c := a and b;
   d := a or b;
   e := a xor b;
   writeln(a, '; ', b, '; ', c, '; ', d, '; ', e);
   writeln( 1 shl 1, '; ', 1 shr 1);
end.
