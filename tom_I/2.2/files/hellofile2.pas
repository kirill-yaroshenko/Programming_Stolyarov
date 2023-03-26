program HelloFile;            { hellofile2.pas }
const
	message = 'Hello, world!';
	filename = 'hello2.txt';
var
	f: text;
begin
	{$I-}
	assign(f, filename);
	rewrite(f);
	if IOResult <> 0 then
	begin
		writeln('Couldn"t open file', filename);
		halt(1)
	end;
	writeln(f, message);
	if IOResult <> 0 then
	begin
		writeln('Couldn"t wtite to the file');
		halt(1)
	end;
	close(f)
end.
