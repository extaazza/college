program z2;

const
  N = 10;

var
  A: array[1..N] of integer; 
  i: integer; 
  massiv: boolean;

begin
  randomize; 
  
  
  for i := 1 to N do
  begin
   readln(A[i]); 
  end;
  
  massiv := True; 
  
  
  for i := 1 to N - 1 do
  begin
    if A[i] < A[i + 1] then 
    begin
      massiv := False; 
      break; 
    end;
  end;
  
  
  writeln('Массив A:');
  for i := 1 to N do
  begin
    write(A[i], ' '); 
  end;
  
  writeln; 
  
  
  if massiv then
    writeln('Элементы массива упорядочены по убыванию.')
  else
    writeln('Элементы массива не упорядочены по убыванию.');
  
  readln; 
end.
