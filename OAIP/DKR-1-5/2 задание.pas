program z2;

function quantity(mainStr, subStr: string): integer;
var
  count, i, j: integer;
  mainLength, subLength: integer;
  found: boolean;
begin
  count := 0;
  mainLength := Length(mainStr);
  subLength := Length(subStr);

  for i := 1 to mainLength - subLength + 1 do
  begin
    found := true;

    for j := 1 to subLength do
    begin
      if mainStr[i + j - 1] <> subStr[j] then
      begin
        found := false; 
        break;
      end;
    end;

    if found then
      count += 1;
  end;
  quantity := count; 
end;

var
  mainStr, subStr: string;
  result: integer;

begin
  write('Введите основную строку: ');
  readln(mainStr);
  write('Введите подстроку для поиска: ');
  readln(subStr);

  result := quantity(mainStr, subStr);
  
  writeLn('Количество вхождений "', subStr, '" в "', mainStr, '": ', result);
end.
