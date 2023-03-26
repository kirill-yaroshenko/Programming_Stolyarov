program pointer1;

type
    ItemPtr = ^Item;
    Item = record
        data: longint;
	next: ItemPtr;
    end;

var
    first, tmp: ItemPtr; 
    a: longint;
begin
    first := nil;
    while not SeekEof do
    begin
        new(tmp);
	readln(a);
	tmp^.data := a;
	tmp^.next := first;
	first := tmp;
    end;
    while first <> nil do
    begin
	writeln(first^.data);
	tmp := tmp^.next;        
	dispose(first);           
	first := tmp;              
	
        {//tmp := first;             
	//first := first^.next;      
	//dispose(tmp);}             
	
    end;
end.
