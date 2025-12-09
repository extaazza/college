program dkr5;

type
  TArray = array of Integer;

procedure InsertionSort(var data: TArray; comparator: function(a, b: Integer): Integer);
var
  i, j, key: Integer;
begin
  for i := 1 to High(data) do
  begin
    key := data[i];
    j := i - 1;
    
    while (j >= 0) and (comparator(key, data[j]) < 0) do
    begin
      data[j + 1] := data[j];
      j := j - 1;
    end;
    data[j + 1] := key;
  end;
end;

function QuickSort(var arr: TArray; ascending: Boolean; left, right: Integer): Boolean;
var
  i, j, pivot, temp: Integer;
begin
  if left < right then
  begin
    pivot := arr[(left + right) div 2];
    i := left;
    j := right;
    
    repeat
      while (ascending and (arr[i] < pivot)) or (not ascending and (arr[i] > pivot)) do Inc(i);
      while (ascending and (arr[j] > pivot)) or (not ascending and (arr[j] < pivot)) do Dec(j);
      
      if i <= j then
      begin
        temp := arr[i];
        arr[i] := arr[j];
        arr[j] := temp;
        Inc(i);
        Dec(j);
      end;
    until i > j;
    
    QuickSort(arr, ascending, left, j);
    QuickSort(arr, ascending, i, right);
  end;
  Result := True;
end;

function CompareAscending(a, b: Integer): Integer;
begin
  Result := a - b;
end;

procedure ReadDataFromFile(const filename: string; var data: TArray; var count: Integer);
var
  f: TextFile;
  num: Integer;
begin
  AssignFile(f, filename);
  Reset(f);
  
  count := 0;
  SetLength(data, 1000); // Инициализируем массив
  
  while not Eof(f) do
  begin
    Read(f, num);
    if count < 1000 then
    begin
      data[count] := num;
      Inc(count);
    end
    else
      Break; // Прерываем, если массив заполнен
  end;
  
  SetLength(data, count); // Обрезаем массив до фактического количества элементов
  CloseFile(f);
end;

procedure WriteDataToFile(const filename: string; const data: TArray);
var
  f: TextFile;
  i: Integer;
begin
  AssignFile(f, filename);
  Rewrite(f);
  for i := Low(data) to High(data) do
    WriteLn(f, data[i]);
  CloseFile(f);
end;

var
  inputData: TArray; 
  count: Integer;
  time1, time2, time3, time4, totaltime: real;

begin
  // Считываем данные из файла
  ReadDataFromFile('C:\проги для программирования\лаба\дкр\дкр 5\числа.txt', inputData, count);
  
  if count = 0 then
  begin
    WriteLn('Ошибка: Нет данных для сортировки.');
    Exit;
  end;
  
  time1 := milliseconds;  // Запись текущего времени
  InsertionSort(inputData, CompareAscending);
  time2 := milliseconds;  // Запись времени после сортировки
  totaltime := time2 - time1 ;
  
  WriteLn('Для сортировки вставками понадобилось ', totalTime:0:2, ' мс');
  
  // Сортировка вставками
  WriteDataToFile('C:\проги для программирования\лаба\дкр\дкр 5\вывод сортировки вставками.txt', inputData);
  
  // Считываем данные заново для сортировки с помощью быстрого алгоритма
  ReadDataFromFile('C:\проги для программирования\лаба\дкр\дкр 5\числа.txt', inputData, count);
  
  time3 := milliseconds;  // Запись текущего времени
  QuickSort(inputData, True, Low(inputData), High(inputData));
  time4 := milliseconds;  // Запись времени после сортировки
  totaltime := time4 - time3;
  
  WriteLn('Для сортировки с помощью быстрого алгоритма понадобилось ', totalTime:0:2, ' мс');
  
  // Сортировка с помощью быстрого алгоритма
  WriteDataToFile('C:\проги для программирования\лаба\дкр\дкр 5\вывод сортировки с помощью быстрого алгоритма.txt', inputData);
  
  WriteLn('Сортировка завершена. Результаты записаны в файлы.');
end.
