program z5;

var
  inputFile, outputFile: TextFile;
  number, min, max: integer;
  first: boolean;

begin
  AssignFile(inputFile, 'input.txt');
  AssignFile(outputFile, 'output.txt');
  
  Reset(inputFile);
  first := True; 
  
  while not Eof(inputFile) do
  begin
    readln(inputFile, number);

    if first then
    begin
      min := number;
      max := number;
      first := False; 
    end
    else
    begin
      if number < min then
        min := number;
      
      if number > max then
        max := number;
    end;
  end;
  CloseFile(inputFile);
  if first then
  begin
    writeln('Файл input.txt пуст.');
  end
  else
  begin
    Rewrite(outputFile);
    writeln(outputFile, 'Минимальное число: ', min);
    writeln(outputFile, 'Максимальное число: ', max);
    CloseFile(outputFile);
  end;
end.