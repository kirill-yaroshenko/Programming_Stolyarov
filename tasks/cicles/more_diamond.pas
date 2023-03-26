program more_diamond;

procedure PrintSpaces(spaces : char; count : integer);
begin
   if count > 0 then
   begin
      write(spaces);
      PrintSpaces(spaces, count - 1);
   end;
end;

procedure PrintSpaces2(spaces : char; count : integer);
var
   i : integer;
begin
   for i := 0 to count do
      write(spaces)
end;

procedure PrintLine(num_spaces, half_height, quantity : integer);
var
   spaces0, spaces1, spaces2, spaces3, line1, line2 : char;
   i                                                : integer;
begin
   for i := 1 to quantity do
   begin
      PrintSpaces2('~', half_height + 1 - num_spaces);
      write('*');
      if num_spaces > 1 then
      begin
	 PrintSpaces('.', 2*num_spaces - 3);
	 write('*');
      end;
      PrintSpaces2('@', half_height + 1 - num_spaces);
      write('!');
   end;
   writeln
end;

procedure PrintDiamonds1(var half_height, quantity : integer);
var
   num_spaces : integer;
begin
   for num_spaces := 1 to half_height + 1 do
      PrintLine(num_spaces, half_height, quantity);
   for num_spaces := half_height downto 1 do
      PrintLine(num_spaces, half_height, quantity);
   writeln('!')
end;

procedure NegotiateSize(var half_height : integer);
var
   height : integer;
begin
   repeat
      write('Enter diamond"s height (posetive odd): ');
      read(height);
   until (height > 0) and (height mod 2 = 1);
   half_height := height div 2;
end;

procedure NegotiateQuantity(var quantity : integer);
begin
   write('Enter diamond"s quantiy(leight): ');
   read(quantity);
end;

procedure NegotiateQuantity2(var quantity2 : integer);
begin
   write('Enter diamond"s quantity(height): ');
   read(quantity2);
end;

procedure PrintDiamonds(var half_height, quantity : integer);
var
   num_spaces : integer;
begin
   for num_spaces := 1 to half_height + 1 do
      PrintLine(num_spaces, half_height, quantity);
   for num_spaces := half_height downto 1 do
      PrintLine(num_spaces, half_height, quantity);
   writeln('!')
end;

var
   half_height, quantity, quantity2, i : integer;
begin
   NegotiateSize(half_height);
//   NegotiateQuantity(quantity);
//   NegotiateQuantity2(quantity2);
   quantity := 2;
   writeln;
   begin
   for i := 1 to quantity do
      PrintDiamonds1(half_height, quantity);
   end;
   writeln
end.
