## Игра "Виселица"

### Принцип игры:

Программа или один из игроков пишет слово, после чего второй игрок должен отгадать слово.
Второй игрок предлагает букву, которая может входить в это слово, при ее наличии - она выводится на экран. 
В противном случае при неправильной букве, она добавляется в список неправильных букв и количество попыток сокращается на одную
Всего у второго игрока есть 7 попыток угадать слово.

Ссылка на Википедию <https://ru.wikipedia.org/wiki/%D0%92%D0%B8%D1%81%D0%B5%D0%BB%D0%B8%D1%86%D0%B0_(%D0%B8%D0%B3%D1%80%D0%B0)>

### Инструкции:

Открытие программы для игры с имеющимися в базе программы словами осуществляется через командную строку путем вызова: ` ruby viselitsa.rb `
Новые слова можно добавить путем внесения их в файл ` ./data/words.txt ` Каждое слово должно начинаться с новой строки.
Так же слово может загадать первый игрок самостоятельно без внесения его в файл путем открытия программы с аргументом пример: ` ruby viselitsa.rb слово `



Написано на Ruby 2.4.0

Автор: Moncklay
