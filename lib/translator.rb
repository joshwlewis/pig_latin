module Translator
  LETTERS = ('a'..'z').to_a
  VOWELS = %w{a e i o u}
  CONSONANTS = LETTERS - VOWELS

  def self.to_pig_latin(english)
    english.split(/\s/).map do |word|
      if word.start_with?(*CONSONANTS)
        word[1..-1] + word[0] + 'ay'
      else
        word + 'way'
      end
    end.join(' ')
  end

  def self.to_english(pig_latin)
    pig_latin.split(/\s/).map do |word|
      if word.end_with?('way')
        word[0...-3]
      else
        word[-3] + word[0...-3]
      end
    end.join(' ')
  end
end
