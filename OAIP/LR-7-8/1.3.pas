program z1;

var
  inputString: string;
  firstChar, lastChar, middleChar: char;
  middleIndex: integer;

begin
  write('Введите строку: ');
  readln(inputString);
  
  if length(inputString) = 0 then
  begin
    writeln('Строка не должна быть пустой');
  end
  else
  begin
    firstChar := inputString[1];
    lastChar := inputString[length(inputString)];
    
    if length(inputString) mod 2 = 1 then
    begin
      middleIndex := length(inputString) div 2 + 1;
      middleChar := inputString[middleIndex];
      writeln('Средний символ: ', middleChar);
    end
    else
    begin
      writeln('Средний символ отсутствует (строка четной длины)');
    end;

    writeln('Первый символ: ', firstChar);
    writeln('Последний символ: ', lastChar);
  end;
  
  readln;
end.
