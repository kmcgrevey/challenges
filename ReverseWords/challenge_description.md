# Interview Cake Weekly Problem #356: Reverse Words
## You're working on a secret team solving coded transmissions.

Your team is scrambling to decipher a recent message, worried it's a plot to break into a major European National Cake Vault. The message has been mostly deciphered, but all the words are backward! Your colleagues have handed off the last step to you.

Write a method `reverse_words!()` that takes a message as a string and reverses the order of the words in place.

For example:
```
message = 'cake pound steal'

reverse_words!(message)

puts message
# Prints: 'steal pound cake'
```
When writing your method, assume the message contains only letters and spaces, and all words are separated by one space.

## Breakdown

It might be tempting to think about using the `split()` method to separate our words (DON'T USE IT!!), but we have to do this **in place** and splitting will create a new array of words.

Instead, can we just move characters around inside the message?

Well, we could swap the first character with the last character, then the second character with the second to last character, and so on, moving towards the middle. Can you implement this in code?