program doublechar;
var
    s, s2: string;
    c: char;
    i, j, k: integer;
begin
    s := 'Humpty Dumpty set on a wall';
//	readln(s);
	writeln(s, ' - ', length(s));
    s2 := s;
    i := 0;
    while i < length(s2) do
    begin
        c := s2[i];
        k := 0;
        for j := i + 1 to length(s2) do
	    if (s2[j] = c) or (s2[j] = #32) or (s2[j] = #9) then
            begin
                k := 1;
                delete(s2, j, 1);
//				s2[j] := ' ';
            end;
        if (k <> 1) then
	   delete(s2, i, 1)
	else
	   i := i + 1;
    end;
    writeln(s2, ' - ', length(s2));
end.
