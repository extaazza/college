  program z1;
  
  const
    max_size = 100;
  
  var
    arr: array[1..max_size] of integer; 
    n, k: integer;                      
    i, j: integer;                     
    found: boolean;
  
  begin
    write('Введите количество элементов массива (не более ', max_size, '): ');
    readln(n);
    if (n < 1) or (n > max_size) then
    begin
      writeln('Ошибка: количество элементов должно быть от 1 до ', max_size);
      exit;
    end;
    writeln('Введите ', n, ' элементов массива:');
    for i := 1 to n do
    begin
      write('Элемент [', i, ']: ');
      readln(arr[i]);
    end;
    write('Введите значение k: ');
    readln(k);
    found := false;  
    writeln('Пары с разностью по модулю ', k, ':');
    
    for i := 1 to n do
    begin
      for j := i + 1 to n do  
      begin
        if abs(arr[i] - arr[j]) = k then 
        begin
          writeln('Элементы ', arr[i], ' и ', arr[j]);
          found := true;  
        end;
      end;
    end;
    
    
    if not found then
    begin
      writeln('Пары не найдены.');
    end;
    
    readln; 
  end.
