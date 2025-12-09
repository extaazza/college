  program posechaemost;

var
  a: string;              
  b, c: integer;        
  d: real;

begin
  writeln('Введите фамилию ученика:');
  readln(a); 
  writeln('Введите количество занятий по предмету:');
  readln(b);
  writeln('Введите количество пропущенных занятий:');
  readln(c); 
  if b > 0 then
    d := ((b - c) / b) * 100
  else
    d := 0;
  writeln('Процент посещаемости ученика ', a, ': ', d:0:2, '%');
  readln;
end.