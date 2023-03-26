program char2_16.pas;
var
    str1, str2   : string;
    chr1, chr2   : char;
    i, j, k      : integer;
    flag         : boolean;
begin
    str1 := 'Humpty Dumpty set on a wall';
    str2 := '';
    writeln(str1, ' - ', length(str1));
    for i := 1 to length(str1) do
    begin
        k := 0;
        flag := false;
        chr1 := str1[i];
        if chr1 <> ' ' then
        begin
            for j := i + 1 to length(str1) do
            begin
                chr2 := str1[j];
                if chr2 = chr1 then
                begin
                    k := 1;
                    flag := true;
                    chr2 := ' ';
                end;
            end;
            if {k = 1} flag = true then
            begin
                write(chr1);
                str2 := str2 + chr1;
            end;
        end;
    end;
    writeln;
    writeln(str2, ' - ', length(str2));
    writeln(str1, ' - ', length(str1));
end.
