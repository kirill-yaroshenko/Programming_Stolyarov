program Squart;
var i,j: byte;
begin
   for i:=1 to 8 do begin
      if (i=1) or (i=8) then
	 for j:=1 to 18 do 
	    write('*')
	 else 
	 begin
	    write('*');
	    for j:=1 to 16 do
	       write(' ');
	    write('*');
	 end;
      writeln;
   end;
end.
