require "unicode"

class Game
  def initialize(slovo)
    slovo = Unicode::downcase(slovo)
    @letters = get_letters(slovo)
    @errors = 0
    @good_letters = []
    @bad_letters = []
    @status = 0
  end

  def get_letters(slovo)
    if slovo == nil || slovo == ""
      abort "Вы не ввели слово для игры"
    end

    slovo.split("")
  end

  def ask_next_letter
    puts "\n Введите следующую букву"

    letter = ""

    while letter == "" do
      letter = STDIN.gets.chomp
      letter = Unicode::downcase(letter)
    end

    next_step(letter)
  end

  def next_step(bukva)
    return if @status == -1 || @status == 1

    return if @good_letters.include?(bukva) || @bad_letters.include?(bukva)

    if @letters.include?(bukva)
      @good_letters << bukva
      @status = 1 if @good_letters.uniq.size == @letters.uniq.size

    else
      @bad_letters << bukva
      @errors += 1
      @status = -1 if @errors >= 7
    end
  end

  def letters
    @letters
  end

  def good_letters
    @good_letters
  end

  def bad_letters
    @bad_letters
  end

  def status
    @status
  end

  def errors
    @errors
  end

end
