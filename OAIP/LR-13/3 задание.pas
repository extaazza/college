program z3;

var
  inputFile, nechetFile, chetFile: TextFile;
  num: real;
  index: integer;

begin
  AssignFile(inputFile, 'C:\проги для программирования\лаба\LR_13\3.1.txt');
  Rewrite(inputFile);
  randomize;
  for index := 1 to 10 do
  begin
    num := random * 100;
    writeln(inputFile, num:0:0); 
  end;
  CloseFile(inputFile);
  AssignFile(inputFile, 'C:\проги для программирования\лаба\LR_13\3.1.txt');
  Reset(inputFile);
  
  AssignFile(nechetFile, 'C:\проги для программирования\лаба\LR_13\нечетный.txt');
  Rewrite(nechetFile);
  
  AssignFile(chetFile, 'C:\проги для программирования\лаба\LR_13\четный.txt');
  Rewrite(chetFile);
  index := 1;
  while not Eof(inputFile) do
  begin
    readln(inputFile, num);
    if index mod 2 <> 0 then
      writeln(nechetFile, num:0:0)
    else
      writeln(chetFile, num:0:0);
    
    index := index + 1;
  end;
  CloseFile(inputFile);
  CloseFile(nechetFile);
  CloseFile(chetFile);
end.
