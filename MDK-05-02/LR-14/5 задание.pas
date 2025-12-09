program z5;
function Evklid(a, b: integer): integer;
begin
  if b = 0 then
    Evklid := a
  else
    Evklid := Evklid(b, a mod b);
end;
var
  num1, num2, result: integer;
begin
  num1 := 3430;
  num2 := 1365;
  result := Evklid(num1, num2);
  writeln('НОД(', num1, ' , ', num2, ') = ', result);
end.
