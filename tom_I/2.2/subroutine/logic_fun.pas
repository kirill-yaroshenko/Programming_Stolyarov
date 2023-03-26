program logic;

function Latter(ch : char) : boolean;
begin
   Latter := ((ch >= 'A') and (ch <= 'Z')) or ((ch >= 'a') and (ch <= 'z'))
end;

var
   c: char;
begin
   read(c);
   if Latter(c) then
      writeln('true')
   else
      writeln('false')
end.
