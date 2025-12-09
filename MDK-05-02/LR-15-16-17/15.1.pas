type
  anketa = record
    fio: string;
    birth: string;
    kurs: 1..5;
  end;

var
  student: anketa;

begin
  
  student.fio := 'Зайцев Илья Владимирович';
  student.birth := '01.01.2000';
  student.kurs := 3;
  
  writeln('ФИО: ', student.fio);
  writeln('Дата рождения: ', student.birth);
  writeln('Курс: ', student.kurs);
end.