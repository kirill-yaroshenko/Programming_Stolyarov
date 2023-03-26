program square;
var
   x : integer; // (-32 768; 32 767)
   y : longint; // (-2 147 483 648; 2 147 483 647)
   z : int64; // (9,223,372,036,854,775,808; 9,223,372,036,854,775,807)
   r : qword; // (18446744073709551615)
   g : word; // (0..65535)
begin
   read(x);
   x := x * x;
   writeln(x);
   read(y);
   y := y * y;
   writeln(y);
   read(z);
   z := z * z;
   writeln(z);
   read(r);
   r := r * r;
   writeln(r)
end.
