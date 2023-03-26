program re;
var
   c : char;
begin
   read(c);
   if (c <= 'A') or (c >= 'a') then
      writeln('Done')
   else
      writeln('Wrong')
end.
