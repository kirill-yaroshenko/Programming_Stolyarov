program ParamStrDemo;
     
var
   i: Integer;
   
begin
   WriteLn ('You have invoked this program with ',
	    ParamCount, ' arguments.');
   WriteLn ('These are:');
   for i := 1 to ParamCount do
      WriteLn (ParamStr (i))
end.
