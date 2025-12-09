type
  toy = record
    name: string[50]; 
    price: string[10];
    age: 1..11;
  end;

var
  f: file of toy; 
  arr: array[1..3] of toy;
  i: integer;

begin
  assign(f, 'C:\проги для программирования\мдк 05.02 Разработка кода информационных систем\лр-15-16-17\15 лаба\input.txt');
  rewrite(f);
  arr[1].name := 'футбольный мяч';
  arr[1].price := '500';
  arr[1].age := 6;
  write(f, arr[1]);
  arr[2].name := 'конструктор';
  arr[2].price := '900';
  arr[2].age := 10;
  write(f, arr[2]);
  arr[3].name := 'кукла';
  arr[3].price := '650';
  arr[3].age := 8;
  write(f, arr[3]);
  close(f);
  reset(f);
  writeln('------------------------');
  i := 1;
  while not eof(f) and (i <= 3) do
  begin
    read(f, arr[i]);
    writeln('Название: ', arr[i].name);
    writeln('Цена: ', arr[i].price);
    writeln('Рекомендуемый возраст: ', arr[i].age);
    writeln('------------------------');
    i += 1;
  end;
  close(f);
end.