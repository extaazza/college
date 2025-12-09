  program z1;
var
   filetext: text;
   a: string;
   i: integer;
begin
   assign(filetext, 'c:\проги для программирования\txt.txt'); 
   rewrite(filetext); 
   for i := 1 to 10 do
   begin
       write(filetext, i); 
       writeln(filetext); 
   end;
   close(filetext); 

   reset(filetext); 
   for i := 1 to 10 do
   begin
       readln(filetext, a); 
       writeln(a); 
   end;
   close(filetext); 
end.
