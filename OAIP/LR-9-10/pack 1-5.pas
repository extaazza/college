program z1;

const
  max_size = 100; // Константа для максимального размера массива

type
  TArray = array[1..max_size] of integer; // Определим тип массива

var
  A, B: TArray; // Глобальные переменные для хранения массивов
  sizeA, sizeB: integer; // Глобальные переменные для размеров массивов

// Процедура для ввода массива
procedure InputArray(var Arr: TArray; var size: integer); // Формальные параметры, передача по ссылке
var
  i: integer; // Локальная переменная
begin
  write('Введите размер массива: ');
  readln(size); // Фактический параметр size, передача по ссылке
  for i := 1 to size do // Фактический параметр size, передача по значению
  begin
    write('Введите элемент ', i, ': ');
    readln(Arr[i]); // Фактический параметр Arr, передача по ссылке
  end;
end;

// Процедура для печати массива
procedure PrintArray(const Arr: TArray; const size: integer); // Формальные параметры, передача по значению
var
  i: integer; // Локальная переменная
begin
  for i := 1 to size do // Фактический параметр size, передача по значению
    write(Arr[i], ' '); // Фактический параметр Arr, передача по значению
  writeln;
end;

// Процедура для замены максимального элемента нулем для массива A
procedure ReplaceMaxWithZero(var Arr: TArray; const size: integer); // Формальные параметры, передача по ссылке и по значению
var
  i, MaxIdx: Integer; // Локальные переменные
  DelenieNaFive: Boolean; // Локальная переменная для проверки кратного пяти
begin
  DelenieNaFive := False; // Локальная переменная для проверки кратного пяти
  // Поиск первого кратного пяти элемента
  for i := 1 to size do // Фактический параметр size, передача по значению
  begin
    if (Arr[i] mod 5 = 0) then // Фактический параметр Arr, передача по ссылке
    begin
      DelenieNaFive := True;
      break;
    end;
  end;
  
  // Если найден кратный пяти элемент, найти максимальный и заменить его на 0
  if DelenieNaFive then
  begin
    MaxIdx := 1; // Индекс максимального элемента
    for i := 2 to size do // Фактический параметр size, передача по значению
    begin
      if Arr[i] > Arr[MaxIdx] then // Фактический параметр Arr, передача по ссылке
        MaxIdx := i; // Обновляем индекс максимального элемента
    end;
    Arr[MaxIdx] := 0; // Заменяем максимальный элемент на 0
  end;
end;

// Процедура для умножения на 2 всех элементов после минимального элемента для массива B
procedure MultiplyAfterMin(var Arr: TArray; const size: integer); // Формальные параметры, передача по ссылке и по значению
var
  MinIdx, i: integer; // Локальные переменные
begin
  // Находим индекс минимального элемента
  MinIdx := 1;
  for i := 2 to size do // Фактический параметр size, передача по значению
  begin
    if Arr[i] < Arr[MinIdx] then // Фактический параметр Arr, передача по ссылке
      MinIdx := i; // Обновляем индекс минимального элемента
  end;
  
  // Умножаем все элементы после минимального на 2
  for i := MinIdx + 1 to size do // Фактический параметр size, передача по значению
  begin
    Arr[i] := Arr[i] * 2; // Увеличиваем элемент в два раза, фактический параметр Arr, передача по ссылке
  end;
end;

begin
  // Ввод данных для массива A
  InputArray(A, SizeA); // Фактические параметры, передача по ссылке
  // Ввод данных для массива B
  InputArray(B, SizeB); // Фактические параметры, перед
 writeln('Исходный массив A:');
  PrintArray(A, SizeA);
  
  writeln('Исходный массив B:');
  PrintArray(B, SizeB);
  
  // Обработка массивов
  ReplaceMaxWithZero(A, SizeA);
  MultiplyAfterMin(B, SizeB);
  
  writeln('Измененный массив A:');
  PrintArray(A, SizeA);
  
  writeln('Измененный массив B:');
  PrintArray(B, SizeB);
end.