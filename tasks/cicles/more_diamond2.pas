program more_diamond;

procedure PrintSpaces(count : integer);
var
   i : integer;
begin
   for i := 0 to count do
      write('-');
//   count := count -1 ;
end;

procedure PrintLine(q, num_spaces, half_height : integer);
var
   i : integer;
begin
   for i := 1 to q do
      begin
	 PrintSpaces(half_height + 1 - num_spaces);
	 write('@');
	 if num_spaces > 1 then
	 begin
	    PrintSpaces(2*num_spaces - 4);
	    write('*');
	 end;
	 PrintSpaces(half_height + 1 - num_spaces);
	 write('&');
      end;
      writeln
end;

var
   q, height, half_height, num_spaces, i : integer;
begin
   height := 11;
   half_height := height div 2;
   q := 2;
   for i := 1 to q do;
   begin
   for num_spaces := 1 to half_height + 1 do
      PrintLine(q, num_spaces, half_height);

   for num_spaces := half_height downto 1 do
	   PrintLine(q, num_spaces, half_height);
   end;
   writeln
end.
