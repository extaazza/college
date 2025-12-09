program z2;

const
  start = -9.0; 
  stop = -2.0;    
  step = 0.1;

var
  x: real;
  a: real;

begin
  x := start;  
  
  while x <= stop do
  begin
    if x < -7 then
      a := sin(x) / tan(x) + exp(x)  
    else if (x < -4) then
      a := cos(x) / x - 61 / cos(x)  
    else
      a := ln(-x) / ln(10) - 1; 

    writeln('x = ', x:0:1, 
            ' : a = ', a:0:3); 
            
    x := x + step; 
  end;
end.
