program sberkassa;

var
  A, B: real;
  years: integer;

begin
  writeln('Введите начальный вклад A (в рублях):');
  readln(A);
  writeln('Введите сумму B (в рублях):');
  readln(B);
  years := 0; 
  while A <= B do
  begin
    A := A * 1.03; 
    years := years + 1;
  end;
  writeln('Вклад станет больше B через ', years, ' лет.');
  readln;
end.
