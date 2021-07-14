require 'pry'

def reverse1(string)
  rev = []
  # parts = string.split("")
  parts = string.chars
  
  until parts.size == 0
    rev << parts.pop
  end

  puts rev.join
end

def reverse2(string)
  l_index = 0
  r_index = string.length - 1
  
  while l_index < r_index do
    string[l_index], string[r_index] =
      string[r_index], string[l_index]

    l_index += 1
    r_index -= 1
  end

  puts string
end

reverse1("hello")
reverse2("peanut")