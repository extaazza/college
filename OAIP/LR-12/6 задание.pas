program z6;
var
  inputFile, outputFile: TextFile;
  lines: array of string; 
  line: string;
  lineCount, i: integer;

begin
  lineCount := 0;
  AssignFile(inputFile, 'input.txt');
  AssignFile(outputFile, 'output.txt');
  Reset(inputFile);
  while not Eof(inputFile) do
  begin
   readln(inputFile, line);
    setLength(lines, lineCount + 1);
    lines[lineCount] := line; 
    Inc(lineCount);
  end;
  CloseFile(inputFile);
  Rewrite(outputFile);
  for i := 0 to lineCount - 1 do
  begin
    if Length(lines[i]) > 0 then
    begin
      writeln(outputFile, lines[i]);
    end;
  end;
  CloseFile(outputFile);
  writeln('Пустые строки удалены из файла.');
end.
