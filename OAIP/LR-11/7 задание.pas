uses GraphABC;
var
  x, y: integer;
begin
  x:=0;
  y:=0;
  repeat
  begin
    rectangle(150+x, 350-y, 180+x, 380-y);
    floodfill(165+x, 365-y, clpurple);
    y+=5;
    x+=2;
    clearwindow
  end
  until y>=350;
  repeat
  begin
    rectangle(150+x, 350-y, 180+x, 380-y);
    floodfill(165+x, 365-y, clpurple);
    y-=5;
    x+=2;
    clearwindow
  end
  until y<=0
end.