program z2;

var
  inputString: string;
  i, plusCount, minusCount, plusAfterCount, minusAfterCount: integer;

begin
  
  write('Введите строку: ');
  readln(inputString);
  
  plusCount := 0;
  minusCount := 0;
  plusAfterCount := 0;
  minusAfterCount := 0;
  
  
  for i := 1 to length(inputString) do
  begin
    
    if inputString[i] = '+' then
    begin
      inc(plusCount);
      
      if (i > 1) and (inputString[i - 1] = '0') then
        inc(plusAfterCount);
    end
    
    else if inputString[i] = '-' then
    begin
      inc(minusCount);
      
      if (i > 1) and (inputString[i - 1] = '0') then
        inc(minusAfterCount);
    end;
  end;
  
  
  writeln('Общее количество символов "+" : ', plusCount);
  writeln('Общее количество символов "-" : ', minusCount);
  writeln('Количество символов "+" после "0" : ', plusAfterCount);
  writeln('Количество символов "-" после "0" : ', minusAfterCount);
  
  readln;
end.
