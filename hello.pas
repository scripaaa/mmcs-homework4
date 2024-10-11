begin
  println('Программа поддреживает русский, английский и французский языки.');
  var Language := ReadString('Введите ваш язык (Russian, French, English): ');
  Assert((Language = 'Russian') or (Language = 'French') or (Language = 'English'));
  var hour := ReadInteger('Введите час от 0 до 23:');
  Assert(hour in 0..23);
  case Language of
    'Russian': case hour of
      4..10: print('Доброе утро, мир!');
      11..16: print('Добрый день, мир!');
      17..22: print('Доброй вечер, мир!');
      else print('Доброй ночи, мир!');
    end;
    'French': case hour of
      4..10: print('Bonjour, monde!');
      11..16: print('Bonjour, monde!');
      17..22: print('Bonsoir, monde!');
      else print('Bonne nuit, monde!');
    end;
    'English': case hour of
      4..10: print('Good morning, world!');
      11..16: print('Good afternoon, world!');
      17..22: print('Good evening, world!');
      else print('Good night, world!');
    end;
  end;
end.
{log1:
Программа поддреживает русский, английский и французский языки.
Введите ваш язык (Russian, French, English):  Russian
Введите час от 0 до 23: 20
Доброй вечер, мир! 
log2:
Программа поддреживает русский, английский и французский языки.
Введите ваш язык (Russian, French, English):  English
Введите час от 0 до 23: 3
Good night, world! 
log3:
Программа поддреживает русский, английский и французский языки.
Введите ваш язык (Russian, French, English):  French
Введите час от 0 до 23: 15
Bonjour, monde! 
}