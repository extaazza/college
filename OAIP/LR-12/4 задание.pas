program z4;

var
  inputFile, tempFile: TextFile;
  line: string;
  k, currentLine: Integer;

begin
  AssignFile(inputFile, 'input.txt');
  AssignFile(tempFile, 'temp.txt');
  Reset(inputFile);
  Rewrite(tempFile);
  write('Введите номер строки K: ');
  readln(k);
  currentLine := 1; 
  while not Eof(inputFile) do
  begin
    readln(inputFile, line);
    
    // Запись строки в временный файл
    writeln(tempFile, line);
    
    // Проверка, нужно ли вставить пустую строку
    if currentLine = k then
    begin
      writeln(tempFile, ''); // Вставка пустой строки
    end;
    
    Inc(currentLine); // Переход к следующей строке
  end;
  
  // Закрытие файлов
  CloseFile(inputFile);
  CloseFile(tempFile);
end.
