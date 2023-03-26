program year22;
var
   year	: integer;
begin
   write('Please type in your birth year: ');
   read(year);
   repeat
      	writeln(year, ' is not a valid year!');
	writeln('Please try again: ');   
	readln(year)
   until (year >= 1900) and (year <= 2020);
   writeln('The year', year, ' is accepted. Thank you!')
end.
