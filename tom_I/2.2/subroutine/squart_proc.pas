program Squart;

procedure LineA(count_1, height, lenght : integer);
var
   sizeA, sizeB, sizeC, spaces                   : char;
 {  count_1,} count_2, q                   : integer;
begin
   sizeA   := '*';
   sizeB   := '*';
   sizeC   := '@';
   spaces  := ' ';
   for q := 1 to 2 do
   //begin
      // for count_1 := 1 to height do
      begin
	 if (count_1 = 1) or (count_1 = height ) or (count_1 = (height + 1)  div 2) or (count_1 = (height+2) div 2) or (count_1 = 3) then
	    for count_2 := 1 to lenght*2 do
	       write(sizeA)
	    else
	    begin
	       write(sizeB);
	       for count_2 := 1 to (lenght*2) -2  do
		  write(spaces);
	       write(sizeC);
	    end;
	 write(' ')
      end;
   writeln('f')
end;
{
   writeln('x')
end;
}
   
var
  height, lenght, n : integer;
begin
   write('Height: ');
   read(height);
   write('Lenght: ');
   readln(lenght);
   writeln('Perimeter: ', height + lenght);
   writeln('Area: ', height * lenght);
   writeln();
 //  LineA(height, lenght);
   for n := 1 to height do
      LineA(n, height, lenght);
end.
