var
  fileText: file of char; 
  ch: char;
  num: integer;

begin
  assign(fileText, 'C:\проги для программирования\лаба\LR_13\vosznak.txt');
  reset(fileText); 
  num := 0;         
  while not eof(fileText) do
  begin
    read(fileText, ch);  
    if (num mod 2 <> 0) then 
    begin
      ch := '!';         
      seek(fileText, num); 
      write(fileText, ch); 
    end;
    num += 1;
  end;
  close(fileText); 
  writeln('Программа выполнена');
end.