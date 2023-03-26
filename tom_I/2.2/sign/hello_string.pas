program HelloString;      { hello_string.pas }

//procedure Hello_S;
var
   hello : array [1..30] of char;
   i     : integer;
begin
   hello := 'Hello, world!!';
   for i := 1 to 30 do
   begin
      if hello[i] = #0 then
         break;
      write(hello[i])
   end;
   writeln                                                                 
end.

{var
   hello : array [1..30] of char;
   i	 : integer;
begin
   hello := 'Hello, world!';
   writeln(hello);
end.}
