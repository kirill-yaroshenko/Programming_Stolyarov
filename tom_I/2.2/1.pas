program Upfa;
var
   i, j, a	: integer;
begin
   for j := 1 to 10 do
      write(j);
   for i := 1 to 10 do
      writeln(i-1);
   for a := 1 to 10 do
   begin
      for i := 1 to a do
	 write(' ');
      write(i);
   end;
end.
