MORSE_CODE = {
  A: '.-',
  B: '-...',
  C: '-.-.',
  D: '-..',
  E: '.',
  F: '..-.',
  G: '--.',
  H: '....',
  I: '..',
  J: '.---',
  K: '-.-',
  L: '.-..',
  M: '--',
  N: '-.',
  O: '---',
  P: '.--.',
  Q: '--.-',
  R: '.-.',
  S: '...',
  T: '-',
  U: '..-',
  V: '...-',
  W: '.--',
  X: '-..-',
  Y: '-.--',
  Z: '--..'
}.freeze

puts 'Please enter a character'
values = gets.chomp

def decode_char(char)
  MORSE_CODE.each do |key, value|
    puts key.to_s if char == value
  end
end

decode_char(values)

puts 'Please enter a sentence'
input_sentences = gets.chomp

def decode_sentence(sentence)
  sentences = []
  actual_sentences = sentence.split(/   /)
  actual_sentences.each do |actual_sentence|
    decode_word(actual_sentence)
  end
  puts sentences.join
end

decode_sentence(input_sentences)
