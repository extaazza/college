unit Levi;
uses GraphABC;

var
  xa, xb, ya, yb, depth: integer;

procedure DrawLeviCurve (x1, y1, x2, y2: integer; depth: integer);
var
  xMid, yMid: integer;
begin
  if depth = 0 then // База: рисуем линию
    Line(round(x1), round(y1), round(x2), round(y2))
  else
  begin
     xMid := (x1 + x2) div 2;
    yMid := (y1 + y2) div 2;

    // Поворот на 45 градусов
    xMid := xMid + (y2 - y1) div 2;
    yMid := yMid - (x2 - x1) div 2;

    DrawLeviCurve(x1, y1, xMid, yMid, depth - 1);
    DrawLeviCurve(xMid, yMid, x2, y2, depth - 1);
  end;
end;

begin

  SetWindowSize(600, 800);
  ClearWindow;

 
  xa := 100; 
  ya := 300; 
  xb := 700; 
  yb := 300; 
  depth := 5; 


  DrawLeviCurve(xa, ya, xb, yb, depth);
  
  readln;
end.
