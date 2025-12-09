program z6;

uses GraphABC;

const
  size = 8;      
  kletka = 50;

var
  row, col: integer;

begin
  SetWindowWidth(size * kletka);
  SetWindowHeight(size * kletka);
  ClearWindow(clWhite);
  for row := 0 to size - 1 do
    for col := 0 to size - 1 do
    begin
      if (row + col) mod 2 = 0 then
        SetBrushColor(clWhite) 
      else
        SetBrushColor(clBlack); 
      var x1 := col * kletka;
      var y1 := row * kletka;
      var x2 := x1 + kletka;
      var y2 := y1 + kletka;
      FillRectangle(x1, y1, x2, y2);
    end;
end.
