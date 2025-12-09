program ww;

var
  n, i: integer;

begin
  writeln('Введите число N:');
  readln(n); 
  for i := 1 to n do
  begin
    if (i mod 2 <> 0) then 
      writeln('Квадрат числа ', i, ' равен ', i * i);
  end;
  readln;
end.