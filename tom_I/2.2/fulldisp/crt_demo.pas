program CRT_Demo;                 { crt_demo.pas }
uses crt;
var
   i : integer;
begin
   window(1, 1, 80, 25);
   textbackground(1);
   clrscr;
   for i := 1 to 10 do
   begin
      window(40-i, 12, 40+i, 14);
      textbackground(7);
      clrscr;
      delay(100);
   end;
   textcolor(5);
   GotoXY(7, 2);
   writeln('Module CRT');
   window(1, 1, 80, 25);
   GotoXY(23, 24);
   textcolor(15);
   textbackground(0);
   write('Enter any key to continue.');
   readkey;
   clrscr;
end.
