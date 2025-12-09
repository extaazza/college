uses GraphABC;
begin
setpenwidth(3);
line(460, 350, 180, 350);
line(460, 350, 560, 100);
line(180, 350, 80, 100);
line(80, 100, 270, 235);
line(560, 100, 370, 235);
line(320, 50, 400, 350);
line(320, 50, 240, 350);
circle(80, 100, 30);
circle(560, 100, 30);
circle(320, 50, 30);
floodfill(320, 100, clpink);
floodfill(320, 50, clpink);
floodfill(80, 100, clsilver);
floodfill(180, 340, clsilver);
floodfill(560, 100, clgold);
floodfill(460, 340, clgold);
end.