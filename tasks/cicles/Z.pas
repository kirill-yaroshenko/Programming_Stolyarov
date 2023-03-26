program Zzzzzz;
uses crt;

const
   DelayDuration = 10;
   Color	 = 16;
var
   AllColors : array [1..Color] of word =
   (
    
       Black, Blue, Green, Cyan,
       Red, Magenta, Brown, LightGray,
       DarkGray, LightBlue, LightGreen, LightCyan,
       LightRed, LightMagenta, Yellow, White
    );
   
procedure Spaces(c: char; count : integer);
var
   i : integer;

begin
   for i := 1 to count do
      write(c);
end;

procedure Horline(n, height, a, h: integer);
begin
   if (n = 1+a) or (n = (h+1)+a) or (n = height+a) then
   begin
      Spaces('*', height);
         write(' ');
   end
   else
   begin
      if (n >= height+a) or (n <= a) then
      begin
	 Spaces(' ', height);
	    write(' ');
      end
      else
      begin
	 Spaces(' ', ((height+a)-n));
	    write('*');
	 Spaces(' ', (n-1)-a);
	    write(' ');
      end;
   end;
end;

procedure Zz(n, height, quantity: integer);
var
   i, a, h, col: integer;
begin
   col := random(Color)+1;  
   h := (height div 2) ;
   for i := 1 to quantity do
   begin
      a := (h*i)-h;
      begin
	 Horline(n, height, a, h);
	 TextColor(AllColors[col]);
	 delay(DelayDuration);
      end;
   end;
   writeln(' ');
end;

procedure NegotiateSize(var height: integer);
begin
   repeat
      write('Enter Z"s height (posetive odd): ');
      read(height);
   until (height > 0) and (height mod 2 = 1) and(height > 4);
end;

procedure NegotiateQuantity(var quantity : integer);
begin
   write('Enter Z"s quantiy(leight): ');
   read(quantity);
end;

var
   n, height, quantity, H: integer;
begin
   NegotiateSize(height);
   NegotiateQuantity(quantity);
   H := height + ((height div 2)*quantity)-(height div 2);
   for n := 1 to H do
      Zz(n, height, quantity);
   writeln;
end.
