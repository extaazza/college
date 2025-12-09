program aa;
var
  n, i: integer;
  besttime: real;
  currenttime: real;
  bestswimmer: string;
begin
  readln(n);
  besttime := maxint; 
  for i := 1 to N do
  begin
    readln(bestswimmer); 
    readln(currenttime); 
    if currenttime < besttime then 
    begin
      besttime := currenttime; 
      bestswimmer := bestswimmer; 
    end;
  end;
  writeln(bestswimmer, ' ', besttime:0:2); 
end.
