require 'pry'


def timeInWords(h, m)
  numbers = [
    "zero", 
    "one",
    "two",
    "three",
    "four",
    "five",
    "six",
    "seven",
    "eight",
    "nine",
    "ten",
    "eleven",
    "twelve",
    "thirteen",
    "fourteen",
    "fifteen",
    "sixteen",
    "seventeen",
    "eighteen",
    "nineteen",
    "twenty",
    "twenty one",
    "twenty two",
    "twenty three",
    "twenty four",
    "twenty five",
    "twenty six",
    "twenty seven",
    "twenty eight",
    "twenty nine"
    ]
  time = ''

  if m <= 30  
    if m == 0
      time = numbers[h] + " o' clock"
    elsif m == 1
      time = 'one minute past ' + numbers[h]
    elsif m == 15
      time = 'quarter past ' + numbers[h]
    elsif m == 30
      time = 'half past ' + numbers[h]
    else
      time = numbers[m] + ' minutes past ' + numbers[h]
    end
  else
    if m == 45
      time = 'quarter to ' + numbers[(h + 1)]
    elsif m == 59
      time = 'one minute to ' + numbers[(h + 1)]
    else
      time = numbers[(60 - m)] + ' minutes to ' + numbers[(h + 1)]
    end
  end
  binding.pry
  time
end

timeInWords(5, 47)
# timeInWords(3, 00)
# timeInWords(7, 15)