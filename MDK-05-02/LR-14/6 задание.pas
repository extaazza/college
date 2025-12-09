program z6;

procedure Fibonacci(i, n: integer);
var
  next: integer;
begin
  writeln(i + n, ' ');
  if (i + n < 89) then
  begin
    next := i + n;  
    Fibonacci(n, next);   
  end;
end;

begin
  Fibonacci(0, 1);  
end.
