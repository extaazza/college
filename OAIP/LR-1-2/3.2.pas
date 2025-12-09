program polozhitelnye;

var
  a, b, c: real;
  count: integer;

begin
  writeln('Введите три числа:');
  readln(a, b, c);
  count := 0;
  if a > 0 then
    count := count + 1;
  if b > 0 then
    count := count + 1;
  if c > 0 then
    count := count + 1;
  writeln('Количество положительных чисел: ', count);
end.