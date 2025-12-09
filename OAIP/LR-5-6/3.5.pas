program z3;

const
  N = 20;

var
  A: array[1..N] of integer; 
  i, maxIndex, minIndex: integer; 
  maxValue, minValue: integer;

begin
  randomize; 
  
  
  for i := 1 to N do
  begin
    A[i] := random(101) - 50;
  end;
  
  
  writeln('Изначальный массив:');
  for i := 1 to N do
  begin
    write(A[i], ' '); 
  end;
  writeln;
  
  
  maxValue := A[1];
  minValue := A[1];
  maxIndex := 1;
  minIndex := 1;
  
  
  for i := 2 to N do
  begin
    if A[i] > maxValue then
    begin
      maxValue := A[i]; 
      maxIndex := i; // 
    end;
    
    if A[i] < minValue then
    begin
      minValue := A[i]; 
      minIndex := i; 
    end;
  end;
  
  
  A[maxIndex] := A[maxIndex] + A[minIndex]; 
  A[minIndex] := A[maxIndex] - A[minIndex]; 
  A[maxIndex] := A[maxIndex] - A[minIndex]; 
  
  
  writeln('Массив после замены максимального и минимального элементов:');
  for i := 1 to N do
  begin
    write(A[i], ' '); 
  end;
  writeln;
  
  readln; 
end.
