program p217;
var
    i, j: integer;
    c: char;
begin
    write('  |');
    for c := '0' to '9' do
	write(' .', c);
    for c := 'A' to 'D' do
	write(' .', c);
    writeln;
    write('  |');
    for i := 1 to 14 do
	write('---');
    writeln;
    for i := 2 to 8 do
    begin
	write(i, '.|');
	for j := 0 to 13 do
	    write('  ', chr((30+i) + j*7));
	writeln
    end
end.
