program qq;

var
  x1, x2, a, b, c, d: integer;

begin
  writeln('Введите трехзначное число: ');
  readln(x1);
  a := x1 div 100;
  b := (x1 div 10) mod 10;
  c := x1 mod 10; 
  x2 := c * 100 + b * 10 + a;
  d := x1 - x2;
  writeln('Разность между ', x1, ' и ', x2, ' равна ', d);
end.