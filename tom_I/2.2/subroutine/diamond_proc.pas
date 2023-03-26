program Diamond;    { diamond_proc.pas }


procedure PrintSpaces1(spaces :char; count : integer);
var
   i	  : integer;
begin
   for i := 1 to count do
      write(spaces)
end;


procedure PrintSpaces(spaces : char; count : integer);
begin
   if count > 0 then
      begin
	 write(spaces);
	 PrintSpaces(spaces, count - 1)
      end
end;

procedure PrintLine(n_spaces, half_height : integer);
var
   spaces1, spaces2, line1, line2 : char;
begin
   spaces1 := '-';
   spaces2 := ' ';
   line1 := '*';
   line2 := '*';
   PrintSpaces(spaces1, half_height + 1 - n_spaces);
   write(line1);
   if n_spaces > 1 then
   begin
      PrintSpaces(spaces2, 2 * n_spaces - 3);
      write(line2)
   end;
   writeln
end;

{
function NegotiateSize_f : integer;
var
   height : integer;
begin
   repeat
      write('Enter the diamond"s height (positive odd): ');
      readln(height)
   until (height > 0) and (height mod 2 = 1);
   NegotiateSize := height
end;
}

procedure NegotiateSize(var res : integer);
var
   height : integer;
begin
   repeat
      write('Enter the diamond"s height (positive odd): ');                
      readln(height)
   until (height > 0) and (height mod 2 = 1);
   height := height div 2;
   res := height;
end;

var
   half_height, n_spaces : integer;
begin
   NegotiateSize(half_height);
   {half_height := NegotiateSize div 2;}
   {half_height := half_height div 2;}   

   for n_spaces := 1 to half_height + 1 do
      PrintLine(n_spaces, half_height);
   for n_spaces := half_height downto 1 do
      PrintLine(n_spaces, half_height)
end.
