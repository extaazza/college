type
  toy = record
    name: string;
    price: string;
    age: 1..11;
  end;

var
  arr: array[1..3] of toy;
  i: integer;

begin
  with arr[1] do
  begin
    name := 'футбольный мяч';
    price := '500';
    age := 6;
  end;
  with arr[2] do
  begin
    name := 'конструктор';
    price := '900';
    age := 10;
  end;
  with arr[3] do
  begin
    name := 'кукла';
    price := '650';
    age := 8;
  end;
  writeln('Наименование товара: ', arr[1].name, ' Цена: ', arr[1].price, ' Рекомендемый возраст: ', arr[1].age);
  writeln('Наименование товара: ', arr[2].name, ' Цена: ', arr[2].price, ' Рекомендемый возраст: ', arr[2].age);
  writeln('Наименование товара: ', arr[3].name, ' Цена: ', arr[3].price, ' Рекомендемый возраст: ', arr[3].age);
end.