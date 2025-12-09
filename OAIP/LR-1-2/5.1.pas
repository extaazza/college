program medved;
var N, M, K,x,y: Integer;  
begin
  writeln('Введите количество банок (N): ');
  readln(N);
  writeln('Введите объем мёда в каждой банке (M): ');
  readln(M);
  writeln('Введите необходимый объем мёда (K): ');
  readln(K);
  y:= 0;
  for x:= 1 to N do
  begin
    y:= y + M;
  end;
  if y >= K then
   writeln('YES')
  else
   writeln('NO');
end.
