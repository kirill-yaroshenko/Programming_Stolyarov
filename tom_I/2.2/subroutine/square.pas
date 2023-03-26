program Squart;
var
   i,j,e : integer;
begin
   for i:=1 to 9 do
   begin
      if (i=1) or (i = 9) then
	 for j:=1 to 18 do
	    write('-')
	 else
	 begin
	    write('@');
	    for j:=1 to 16 do
	       write(' ');
	    write('|');
	 end;
      writeln;
   end;
end.
