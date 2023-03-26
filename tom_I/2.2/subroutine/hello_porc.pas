program Hello;

procedure SayHello;
begin
   writeln('Hello, world!')
end;

procedure Hello_n(count	: integer);
var
   i : integer;
begin
   for i := 1 to count do
      write('Hello ;')
end;

begin
   SayHello;
   Hello_n(30);
   writeln
end.
