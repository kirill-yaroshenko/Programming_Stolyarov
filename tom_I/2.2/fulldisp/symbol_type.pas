program SymbolType;             { symbol_typr.pas }
var
   c : char;
begin
   read(c);
   write('The symbol is ');
   case c of
     'a'..'z', 'A'..'Z':
        writeln('a latin letter');
     '0'..'9':
        writeln('a digit');
     '+', '-', '/', '*': 
        writeln('an arithmetic operation symbol');
     '<', '>', '=':
        writeln('a comparision sign');
     '.', ',', ';', ':', '!', '?':
        writeln('a punctuation symbol');
     '_', '~', '@', '#', '$', '%', '^', '&', '`', '|', '\':
        writeln('a special purpose sign');
     ' ':
        writeln('the space character');
     #9, #10, #13:
        writeln('a formatting code');
     #27:
        writeln('escape code');
     '(', ')', '[', ']', '{', '}':
        writeln('a quoting symbol');
     else
	writeln('something strange')
   end
end.
