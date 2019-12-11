class WordConvert
  def initialize(num)
    @num=num
    @number_scale = { 1000000 => "million", 1000 => "thousand", 100 => "hundred", 90 => "ninety", 80 => "eighty", 70 => "seventy", 60 => "sixty", 50 => "fifty", 40 => "forty", 30 => "thirty", 20 => "twenty", 19=>"nineteen", 18=>"eighteen", 17=>"seventeen",  16=>"sixteen", 15=>"fifteen", 14=>"fourteen", 13=>"thirteen", 12=>"twelve", 11 => "eleven", 10 => "ten", 9 => "nine", 8 => "eight", 7 => "seven", 6 => "six", 5 => "five", 4 => "four", 3 => "three", 2 => "two", 1 => "one", 0 => "zero"}
    @tens = {9 => "ninety", 8 => "eighty", 7 => "seventy", 6 => "sixty", 5 => "fifty", 4 => "forty", 3 => "thirty", 2 => "twenty", 1 => "one"}
  end

  def word_convert()
    final = ""
    new_num = @num.digits().reverse()
    if new_num.length == 1
      new_num.each do | number |
        if @number_scale.keys.include?(number)
          final += (@number_scale.fetch(number))
        end
      end
    elsif new_num.length == 2
      joined_number = new_num.join("").to_i
      if @number_scale.keys.include?(joined_number)
        final += (@number_scale.fetch(joined_number))
      else
        new_num = @num.digits().reverse()
        new_num.each do | number |
          if new_num[0]
            final += (@tens.fetch(number))
          else new_num[1]
            final += (@number_scale.fetch(number))
          end
        end
      end
    end
    puts final
    final
  end
end
