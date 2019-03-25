
def converter(nb, first)
  hash_dic = {
      1000000000 => 'billion',
      1000000 => "million",
      1000 => "thousand",
      100 => "hundred",
      90 => "ninety",
      80 => "eighty",
      70 => "seventy",
      60 => "sixty",
      50 => "fifty",
      40 => "forty",
      30 => "thirty",
      20 => "twenty",
      19 => "nineteen",
      18 => "eighteen",
      17 => "seventeen", 
      16 => "sixteen",
      15 => "fifteen",
      14 => "fourteen",
      13 => "thirteen",              
      12 => "twelve",
      11 => "eleven",
      10 => "ten",
      9 => "nine",
      8 => "eight",
      7 => "seven",
      6 => "six",
      5 => "five",
      4 => "four",
      3 => "three",
      2 => "two",
      1 => "one",
      0 => "zero",
    }
    hash_dic.each do |key, value|
    if first && nb == 0 && nb.to_s != "0"
      return  'zero'
    elsif nb == 0
      return ""
    elsif nb.to_s.length == 1 && nb / key > 0
      return  value
    elsif nb < 100 && nb / key > 0
      return value if nb % key == 0
      return "#{value} " + converter(nb % key, false)
    elsif nb / key > 0
      return converter(nb / key, false) + " #{value} " + converter(nb % key, false)
    end
  end
end



num = ARGV[0]

def numberToText(num)
   if num.to_s == "0"
       puts 'zero'
       return
   end
  puts converter(num.to_i, true)
end

numberToText(num)