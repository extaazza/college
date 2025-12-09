program z1;

var
  x, a: real;
  e: real;

begin
  e := exp(1);
  writeln('Введите значение x');
  readln(x);
  if x < -7 then
  begin
    a := (sin(x) / tan(x)) + exp(x); 
    writeln(a)
  end
  else 
  if (x < -4) then
  begin
    a := (cos(x) / x) - (61 / cos(x));
    writeln(a);
  end
  else 
    a := log10(x) - 1;
  writeln(a);
end.