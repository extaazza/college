program z6;
var
  i,indMax,indMin,max,min:integer;
  fileText,fileText2: file of integer;
  arr: array[1..10] of integer;
  begin
  assign(fileText,'C:\проги для программирования\лаба\LR_13\minmax.txt');
  assign(fileText2,'C:\проги для программирования\лаба\LR_13\minmax2.txt');
  rewrite(fileText);
  writeln('Введите числа');
  for i:=1 to 10 do 
    begin
    readln(arr[i]);
    write(fileText, arr[i]);
    end;
  writeln('Числа записаны');
  rewrite(fileText2);
  indMax:=0; 
  indMin:=0;
  max:=-2147483647; 
  min:=2147483647;
  for i:=1 to 10 do
  begin
    if arr[i] > max then
      begin
      max:=arr[i];
      indMax:=i;
      end;
    if arr[i] < min then
      begin
      min:=arr[i];
      indMin:=i;
      end
  end;
  if indMax=0 then
    indMax+=1;
  if indMin=0 then
    indMin+=1;
  arr[indMax]:= min;
  arr[indMin]:= max;
  writeln('Массив: ', arr);
  for i:=1 to 10 do
  begin
    write(fileText2,arr[i]);
  end;
  close(fileText);
  close(fileText2);
  end.