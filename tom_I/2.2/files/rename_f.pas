program RenameFile;       { raname_f.pas }
var
   f : file;
begin
   {$I-}
   if ParamCount < 2 then
   begin
      writeln(ErrOutput, 'Expect the old and new file names');
      halt(1)
   end;
   assign(f, ParamStr(1));
   rename(f, ParamStr(2));
   if IOResult <> 0 then
   begin
      writeln(ErrOutput, 'Error renaming the file');
      halt(1)
   end
end.
