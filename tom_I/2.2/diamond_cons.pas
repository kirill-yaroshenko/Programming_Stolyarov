program diamond_con;                                                                             
const
   size_a  = '*';
   size_b  = '*';
   size_c  = '*';
   size_d  = '*';
   size_sa = ' ';
   size_sb = ' ';
   size_sc = ' ';
   size_sd = ' ';
var                                                                                          
   height, half_height, n_spaces, step : integer;                                         
begin                                                                                        
   repeat                                                                                    
      write('Enter the diamond"s height (positive odd): ');                                  
      readln(height)                                                                         
   until (height > 0) and (height mod 2 = 1);                                                
   half_height := height div 2;                                                              
   for n_spaces := 1 to half_height + 1 do                                                   
   begin                                                                                     
      for step := 1 to half_height + 1 - n_spaces do                                      
         write(size_sa);                                                                         
      write(size_a);                                                                            
      if n_spaces > 1 then                                                                   
      begin
	 for step :=1 to 2 * n_spaces - 3 do
	    write(size_sb);
	 write(size_b)
      end;
      writeln
   end;
   for n_spaces := half_height downto 1 do
   begin
      for step := 1 to half_height + 1 - n_spaces do
	 write(size_sc);
      write(size_c);
      if n_spaces > 1 then
      begin
	 for step := 1 to 2 * n_spaces - 3 do
	    write(size_sd);
	 write(size_d)
      end;
      writeln
   end                                                                                      
end.                                                                                         
                                                                                             
                                    
