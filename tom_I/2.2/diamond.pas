program diamond;
var
   height, half_height, n_spaces, step : integer;
begin
   repeat
      write('Enter the diamond"s height (positive odd): ');
      readln(height)
   until (height > 0) and (height mod 2 = 1);
   half_height := height div 2;
   for n_spaces := 1 to half_height + 1 do
   begin
      for step := 1 to half_height + 1 - n_spaces do
	 write(',');
      write('A');
      if n_spaces > 1 then
      begin
	 for step := 1 to 2 * n_spaces - 3 do
	    write('.');
	 write('B')
      end;
      writeln
   end;
   for n_spaces := half_height downto 1 do
   begin
      for step := 1 to half_height + 1 - n_spaces do
	 write('`');
      write('C');
      if n_spaces > 1 then
      begin
	 for step := 1 to 2 * n_spaces - 3 do
	    write('~');
	 write('D')
      end;
      writeln
   end
end.
