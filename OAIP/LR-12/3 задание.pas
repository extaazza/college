program z3;

var
  filetext: text;          
  S: string;               
  filePath: string;

begin
  writeln('Введите строку, которую вы хотите добавсвить в файл:');
  readln(S); 
  writeln('Введите полный путь к текстовому файлу (например, C:\path\file.txt):');
  readln(filePath); 
  assign(filetext, filePath); 
  append(filetext); 
  writeln(filetext, S); 
  close(filetext); 
  writeln('Строка "', S, '" была успешно добавлена в файл ', filePath, '.'); 
end.
