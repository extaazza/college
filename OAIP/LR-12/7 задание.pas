program z7;
var
  x1, x2: text;
  n, i, j, count, sum: integer;
begin
  assign(x1,'C:\проги для программирования\лаба\LR_12\7.1.txt');
  assign(x2,'C:\проги для программирования\лаба\LR_12\7.2.txt');
  reset(x1);
  rewrite(x2);
  readln(x1, n);
  sum:=0;
  for i:=1 to n do
  begin
    count:=2;
    for j:=2 to (i div 2) do if i mod j = 0 then count+=1;
    if count=5 then sum+=i
  end;
  writeln(x2, sum);
  close(x1);
  close(x2)
end.  