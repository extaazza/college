program dkr6;

const
  MAX = 100; // Максимальный размер списка

type
  TNode = record // Структура элемента списка
    value: integer; // Значение элемента
    next: integer; // Индекс следующего элемента (если -1 = конец)
  end;
  
  TList = record // Структура списка
    nodes: array[0..MAX - 1] of TNode; // Массив элементов
    head, free, size: integer;
  end;


procedure Init(var L: TList);
var
  i: integer;
begin
  for i := 0 to MAX - 2 do L.nodes[i].next := i + 1; 
  L.nodes[MAX - 1].next := -1; 
  L.head := -1; 
  L.free := 0;  
  L.size := 0;   
end;


function Empty(var L: TList): boolean;
begin
  Empty := L.head = -1;
end;


procedure Push(var L: TList; v: integer);
var
  idx: integer;
begin
  if L.free = -1 then exit; // Если нет свободных мест - выход
  idx := L.free; 
  L.free := L.nodes[idx].next; 
  L.nodes[idx].value := v; 
  L.nodes[idx].next := L.head; 
  L.head := idx; 
  inc(L.size); 
end;


function Pop(var L: TList): integer;
var
  idx: integer;
begin
  if Empty(L) then 
  begin
    Pop := -1; // Возвращаем -1 при пустом списке
    exit;
  end;
  idx := L.head; 
  Pop := L.nodes[idx].value; 
  L.head := L.nodes[idx].next; 
  L.nodes[idx].next := L.free; 
  L.free := idx; 
  dec(L.size); 
end;


procedure Print(var L: TList);
var
  curr: integer;
begin
  if Empty(L) then 
  begin
    writeln('Пусто'); 
    exit; 
  end;
  curr := L.head; 
  while curr <> -1 do // Пока не конец списка
  begin
    write(L.nodes[curr].value, ' '); 
    curr := L.nodes[curr].next; 
  end;
  writeln;
end;


var
  L: TList;
  spisok, val: integer;

begin
  Init(L); // Инициализация списка
  repeat
    writeln('1-Добавить');
    writeln('2-Удалить');
    writeln('3-Вывести на экран всю структуру');
    writeln('4-Выход из программы');
    readln(spisok); 
    case spisok of
      1:
        begin
          readln(val); 
          Push(L, val); // Добавление
        end;
      2: writeln('Удалено: ', Pop(L)); // Удаление элемента
      3: Print(L); // Вывод списка
      4: writeln('Завершение работы программы..'); // Выход из программы
    else writeln('Ошибка: неверная команда!'); // Неверная команда
    end;
  until spisok = 4; // Выход по команде 4
end.
