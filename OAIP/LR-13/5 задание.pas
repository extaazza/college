program z5;

var
  inputFile: TextFile;
  num, prevNum: real;
  lastLocalMax: real;
  isLocalMaxFound: boolean;
  currentIndex: integer;

begin
  AssignFile(inputFile, 'C:\проги для программирования\лаба\LR_13\5.1.txt');
  Reset(inputFile);
  lastLocalMax := 0;
  currentIndex := 0; 
  isLocalMaxFound := False; 
  if not Eof(inputFile) then
  begin
    readln(inputFile, num);
    currentIndex := 1; 
    prevNum := num;
  end;  
  while not Eof(inputFile) do
  begin
    readln(inputFile, num);
    currentIndex := currentIndex + 1;
    if (currentIndex > 1) then
    begin
      if (prevNum < num) and (currentIndex > 2) then
      begin
        lastLocalMax := prevNum; 
        isLocalMaxFound := True; 
      end;
    end;
    prevNum := num;
  end;
  CloseFile(inputFile);
  if isLocalMaxFound then
    writeln('Последний локальный максимум: ', lastLocalMax:0:2)
  else
    writeln('Локальный максимум не найден.');
end.
