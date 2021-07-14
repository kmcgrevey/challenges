def reverse_words(message)
  p message + ' <-- START'
  
  reverse_characters(message, 0, message.length - 1)

  p message + ' <-- REVERSE'

  current_word_start_index = 0

  (0..message.length).each do |idx|
    next unless idx == message.length || message[idx] == ' '

    reverse_characters(message, current_word_start_index, idx - 1)
  
    current_word_start_index = idx + 1
    p message 
  end
  
  p message + " <-- DONE!"

end

def reverse_characters(message, left_index, right_index)
  # left_index = 0
  # right_index = message.length - 1

  # walk toward the middle from both sides
  while left_index < right_index
    #swap left and right characters
    message[left_index], message[right_index] =
      message[right_index], message[left_index]

    left_index += 1
    right_index -= 1
  end
  
end

# RUNS
# message = 'cake pound steal'
message = 'landed has eagle the'

reverse_words(message)