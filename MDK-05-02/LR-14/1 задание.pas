program z1;
procedure PrintNumbers(n: integer);
begin
  if n < 0 then
    exit;
  writeln(n);
  PrintNumbers(n - 2);
end;
begin
  PrintNumbers(25);
end.
