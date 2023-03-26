program RdKey;                 { rd_key.pas }
uses crt;
var
   c, cc : char;
begin
   writeln('Enter any key to find out its ASCII code. Enter Spaces to exit');
   repeat
      c := ReadKey;
      cc := c;
      if (cc < #32) or (cc > #126) then
	 cc := '?';
      writeln(ord(c), ' (', cc, ')')
   until c = ' ';
end.
