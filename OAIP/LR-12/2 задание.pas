program z2;

var
   filetext: text;            
   N, K, i: integer;          
   stars: string;             
   filePath: string;          

begin
   writeln('Введите количество строк N:');
   readln(N); 
   writeln('Введите количество звездочек K:');
   readln(K); 
   writeln('Введите полный путь для сохранения файла (например, C:\path\stars.txt):');
   readln(filePath); 
   assign(filetext, filePath); 
   rewrite(filetext); 
   stars := ''; 
   for i := 1 to K do
       stars := stars + '*'; 
   for i := 1 to N do
       writeln(filetext, stars); 

   close(filetext); 
   writeln('Файл ', filePath, ' успешно создан и заполнен.'); 
end.
