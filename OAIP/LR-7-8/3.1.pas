program z3;

var
  inputString: string;
  modifiedString: string;
  lengthInput: Integer;

begin
  write('Введите строку: ');
  readln(inputString);
  
  lengthInput := length(inputString);
  
  
  if lengthInput > 10 then
  begin
    
    modifiedString := copy(inputString, 1, 6);
  end
  else
  begin
    modifiedString := inputString + StringOfChar('o', 12 - lengthInput);
  end;
  WriteLn('Измененная строка: ', modifiedString);
end.
