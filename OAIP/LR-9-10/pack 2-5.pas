program z2;

const
  N = 8; // Размер двумерного массива

type
  TArray2D = array[1..N, 1..N] of integer; // Объявление типа двумерного массива
  TArray1D = array[1..N] of integer; // Объявление типа одномерного массива

// Процедура для заполнения двумерного массива случайными числами
procedure FillArray(var Arr: TArray2D);
var
  i, j: integer;
begin
  randomize; // Инициализация генератора случайных чисел
  for i := 1 to N do
    for j := 1 to N do
      Arr[i, j] := random(100); // Заполнение массива случайными числами от 0 до 99
end;

// Процедура для проверки наличия единственного максимума в строке
function FirstMax(const Arr: TArray2D; Row: integer): boolean;
var
  i, MaxValue, Count: integer;
begin
  MaxValue := Arr[Row, 1];
  Count := 1;

  // Находим максимальное значение и считаем количество его вхождений
  for i := 2 to N do
  begin
    if Arr[Row, i] > MaxValue then
    begin
      MaxValue := Arr[Row, i];
      Count := 1; // Сбрасываем счетчик при нахождении нового максимума
    end
    else if Arr[Row, i] = MaxValue then
      Count := Count + 1; // Увеличиваем счетчик при нахождении равного максимума
  end;

  // Возвращаем true, если максимум уникальный
  FirstMax := (Count = 1);
end;

// Процедура для формирования одномерного массива на основе двумерного
procedure CreateResultArray(const Arr: TArray2D; var result: TArray1D);
var
  i: integer;
begin
  for i := 1 to N do
  begin
    if FirstMax(Arr, i) then
      result[i] := 1
    else
      result[i] := -1;
  end;
end;

// Процедура для вывода двумерного массива
procedure PrintArray2D(const Arr: TArray2D);
var
  i, j: integer;
begin
  for i := 1 to N do
  begin
    for j := 1 to N do
      write(Arr[i, j]:4); // Вывод каждого элемента с отступом
    writeln; // Переход к следующей строке
  end;
end;

// Процедура для вывода одномерного массива
procedure PrintArray1D(const Arr: TArray1D);
var
  i: integer;
begin
  for i := 1 to N do
    write(Arr[i]:4);
  writeln; // Переход на новую строку
end;

var
  Array2D: TArray2D; // Объявление двумерного массива
  ResultArray: TArray1D; // Объявление одномерного массива

begin
  FillArray(Array2D); // Заполнение двумерного массива случайными числами

  writeln('Двумерный массив:');
  PrintArray2D(Array2D); // Вывод двумерного массива

  CreateResultArray(Array2D, ResultArray); // Формирование одномерного массива на основе результата
  writeln('Результирующий одномерный массив:');
  PrintArray1D(ResultArray); // Вывод одномерного массива
end.
