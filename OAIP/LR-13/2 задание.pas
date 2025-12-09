program z2;

var
  inputFile, outputFile: TextFile;
  line: string;
  maxLength: integer;
  lines: array of string; 
  lineCount: integer;
  i: integer;

begin
  AssignFile(inputFile, 'C:\проги для программирования\лаба\LR_13\2.1.txt');
  Reset(inputFile);
  maxLength := 0;
  while not Eof(inputFile) do
  begin
    readln(inputFile, line);
    if Length(line) > maxLength then
    begin
      maxLength := Length(line);
      lineCount := 0; 
      SetLength(lines, 0); 
    end;
    if Length(line) = maxLength then
    begin
      Inc(lineCount);
      SetLength(lines, lineCount);
      lines[lineCount   - 1] := line; 
    end;
  end;
  CloseFile(inputFile);
  AssignFile(outputFile, 'C:\проги для программирования\лаба\LR_13\2.2.txt');
  Rewrite(outputFile);
  for i := lineCount - 1 downto 0 do
  begin
    writeln(outputFile, lines[i]);
  end;
  CloseFile(outputFile);
end.
