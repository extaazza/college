program z2;

function sumTo(n: integer): integer;
begin
  if n = 1 then
    sumTo := 1
  else
    sumTo := n + sumTo(n - 1);
end;
var
  n: integer;
  result: integer;

begin
  write('Введите значение n: ');
  readln(n);
  result := sumTo(n);
  writeln('Сумма чисел от 1 до ', n, ' равна: ', result);
end.
