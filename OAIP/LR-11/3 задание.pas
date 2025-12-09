program z3;

uses GraphABC;

var
  x, y, r: integer;

begin
  SetWindowSize(800, 600);
  y := 100;  
  r := 10;  
  
  for x := 50 to 290 do
  begin
    if (x - 50) mod 30 = 0 then
    begin
      circle(x, y, r);
      floodfill(x, 100,(rgb(random(256), random(256), random(256))));
    end;
  end;
end.