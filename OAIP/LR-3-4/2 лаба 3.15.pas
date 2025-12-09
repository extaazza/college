program kiosk_sales;

var
  newspaperPrice, magazinePrice: real; 
  totalSales: integer; 
  totalRevenue: real; 
  choice: char; 
  payment: real; 
  continueSelling: char;

begin
  
  newspaperPrice := 30; 
  magazinePrice := 20; 
  totalSales := 0;
  totalRevenue := 0;
  
  
  repeat
    writeln('Что вы хотите купить? (G - газета, M - журнал): ');
    readln(choice);
    
    if choice = 'G' then
    begin
      writeln('Цена газеты: ', newspaperPrice:0:2, ' руб.');
      writeln('Введите сумму оплаты: ');
      readln(payment);
      
      if payment >= newspaperPrice then
      begin
        totalRevenue := totalRevenue + newspaperPrice;
        totalSales := totalSales + 1;
        writeln('Спасибо за покупку! Сдача: ', (payment - newspaperPrice):0:2, ' руб.');
      end
      else
        writeln('Недостаточно средств для покупки газеты.');
      
    end else if choice = 'M' then
    begin
      writeln('Цена журнала: ', magazinePrice:0:2, ' руб.');
      writeln('Введите сумму оплаты: ');
      readln(payment);
      
      if payment >= magazinePrice then
      begin
        totalRevenue := totalRevenue + magazinePrice;
        totalSales := totalSales + 1;
        writeln('Спасибо за покупку! Сдача: ', (payment - magazinePrice):0:2, ' руб.');
      end
      else
        writeln('Недостаточно средств для покупки журнала.');
      
    end else
      writeln('Некорректный выбор. Пожалуйста, выберите G или M.');
    
    writeln('Хотите продолжить продажи? (Y - да, N - нет): ');
    readln(continueSelling);
    
  until continueSelling = 'N';
  
  
  writeln('Общее количество продаж: ', totalSales);
  writeln('Общая выручка: ', totalRevenue:0:2, ' руб.');
  
  readln; 
end.
