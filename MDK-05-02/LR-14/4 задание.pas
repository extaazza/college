  program z4;

procedure LoopFor(i, n: integer);
{Первый параметр – счетчик шагов, второй параметр – общее количество шагов}
begin
  if i <= n then
  begin
    writeln('привет ', i); 
    LoopFor(i + 1, n); 
  end;
end;

begin
  LoopFor(1, 10); 
end.
