program z5;
uses GraphABC;

begin
  ClearWindow(clWhite);

  // Цикл для рисования кругов
  for var i := 0 to 7 do
  begin
    var x := 50 + i * 50; // координата x
    var y := 50 + i * 50; // координата y
    var size := 20+ i * 20; // вычисление размера круга

    // Выбор цвета для каждого круга
    case i of
      0: SetBrushColor(clBlue);
      1: SetBrushColor(clPurple);
      2: SetBrushColor(clLightGreen);
      3: SetBrushColor(clRed);
      4: SetBrushColor(clPink);
      5: SetBrushColor(clNavy);
      6: SetBrushColor(clViolet);
      7: SetBrushColor(clGreen);
    end;

    // Рисование круга
    FillCircle(x, y, size div 2);
  end;
end.
