program abrakadabra;
var
   s1	     : string[15];
   s2, s3, s, a, b : string;
   c	     : char;
begin
   s1 := 'abrakadabra';
   a := 'abrachadabra';
   b := 'ABRA';
   s2 := s1;
   s3 := s1 + ' ASWAF';
   writeln(s1[1], ' ', s2[1], '-', ord(s1[0]), ';', ord(s2[0]));
   writeln('abra'#9'kadabra', '______', s3, ':', length(s3));
   SetLength(a, 4);
   writeln(UpCase(a));
   LowerCase(b);
   writeln('a =', a, '; ', 'b =', b);
   s := '';
   writeln('_._._._._._._._._._');
   begin
   for c := 'A' to 'z' do
      s := s + c;
   writeln(s)
   end;
end.
