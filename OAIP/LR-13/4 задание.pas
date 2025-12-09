program z4;

var
  inputFile: TextFile;
  num: real;
  sum: real;
  index: integer;

begin
  AssignFile(inputFile, 'C:\проги для программирования\лаба\LR_13\4.1.txt');
  Rewrite(inputFile);
  randomize;
  for index := 1 to 10 do
  begin
    num := random * 100;
    writeln(inputFile, num:0:0);
  end;
  CloseFile(inputFile);
  AssignFile(inputFile, 'C:\проги для программирования\лаба\LR_13\4.1.txt');
  Reset(inputFile);
  sum := 0;
  index := 1;
  while not Eof(inputFile) do
  begin
    readln(inputFile, num);
    
    
    if index mod 2 = 0 then
      sum := sum + num;
    
    index := index + 1;
  end;
  CloseFile(inputFile);
  writeln('Сумма чисел с четными индексами: ', sum:0:0);
end.
