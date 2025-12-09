program z4;

uses GraphABC;

var
  x, y, r, i: integer;
  colors: array[1..20] of Color;

begin
  
  SetWindowSize(800, 600);
  
  x := WindowWidth div 2;  
  y := WindowHeight div 2; 
  r := 15;            
  
  // Инициализация массива цветов
  colors[1] := clRed;
  colors[2] := clGreen;
  colors[3] := clBlue;
  colors[4] := clYellow;
  colors[5] := clGold;
  colors[6] := clFuchsia;
  colors[7] := clLime;
  colors[8] := clMaroon;
  colors[9] := clNavy;
  colors[10] := clOlive;
  colors[11] := clPurple;
  colors[12] := clSilver;
  colors[13] := clBrown;
  colors[14] := clGray;
  colors[15] := clWhite;
  colors[16] := clBlack;
  colors[17] := RGB(255, 165, 0); // Orange
  colors[18] := RGB(128, 0, 128); // Indigo
  colors[19] := RGB(75, 0, 130);  // Violet
  colors[20] := RGB(255, 192, 203); // Pink
  for i := 20 downto 1 do
  begin
    SetBrushColor(colors[i]); 
    Circle(x, y, r * i); 
  end;
end.
