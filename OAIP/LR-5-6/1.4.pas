program z1;

const
  N = 30;

var
  A: array[1..N] of integer; 
  B: array[1..N] of integer; 
  i, count: integer;

begin
  randomize; 
  
  
  for i := 1 to N do
  begin
    A[i] := Random(167) - 99; 
  end;
  
  count := 0; 
  
  
  for i := 1 to N do
  begin
    if A[i] mod 2 = 0 then 
    begin
      count := count + 1; 
      B[count] := A[i]; 
    end;
  end;
  
  
  writeln('Массив A:');
  for i := 1 to N do
  begin
    write(A[i], ' '); 
  end;
  
  writeln; 
  
  writeln('Массив B (четные элементы):');
  for i := 1 to count do
  begin
    write(B[i], ' '); 
  end;
  
  readln; 
end.
