program main;

uses GraphABC, Levi;

var
  xa, ya, xb, yb, depth: integer;

procedure DrawLeviCurve(x1, y1, x2, y2: integer; depth: integer);
var
  xMid, yMid: integer;
begin
  if depth = 0 then
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

procedure dvizh(a: integer);
begin
  case a of
    VK_Up:
      begin
        ya := ya - 5;
        yb := yb - 5;
      end;
    VK_Down:
      begin
        ya := ya + 5;
        yb := yb + 5;
      end;
    VK_Left:
      begin
        xa := xa - 5;
        xb := xb - 5;
      end;
    VK_Right:
      begin
        xa := xa + 5;
        xb := xb + 5;
      end;
  end;
  Window.Clear;
end;

procedure glub(b: integer);
begin
  case b of
    VK_w: 
    depth := depth + 1;
    VK_s: 
    if depth > 0 then depth := depth - 1; 
  end;
  Window.Clear;
end;

procedure maschtab(c: char);
begin
  xa := Min(xa, xb);
  xb := Max(xa, xb);
  case c of
    'd':
      begin
        xa := xa - 5;
        xb := xb + 5;
      end;
    'a':
      begin
        xa := xa + 5;
        xb := xb - 5;
      end;
  end;
  Window.Clear;
end;

begin
  LockDrawing;
  SetWindowSize(600, 800);
  xa := 100;
  ya := 400;
  xb := 500;
  yb := 400;
  depth := 2;
  
  repeat
    Window.Clear;
    DrawLeviCurve(xa, ya, xb, yb, depth);
    OnKeyDown := dvizh;  
    OnKeyUp := glub;
    OnKeyPress := maschtab;
    Redraw;
    Sleep(1);
  until false;
end.
