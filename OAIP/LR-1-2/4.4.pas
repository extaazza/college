program rabota;

var
  X, A: real;
  regular, overtime, total_summa: real;

begin
  writeln('Введите заработок за 38 часов работы (в рублях): ');
  readln(X);
  writeln('Введите общее количество отработанных часов: ');
  readln(A);
  if A > 38 then
  begin
    regular := 38;
    overtime := A - 38;
  end;
  if A <= 38 then
  begin
    regular:= A;
    overtime:= 0;
  end;
  total_summa := (regular / 38) * X + overtime * (X / 38) * 1.5;
  writeln('Общая сумма заработка: ', total_summa:0:2, ' рублей');
end.