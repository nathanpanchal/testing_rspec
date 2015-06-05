def to_pig_latin(word)
  vowels = ['a', 'e', 'i', 'o', 'u']
  letters = word.split(//)
  until vowels.include?(letters[0])
    if letters[0]+letters[1] == 'qu'
      letters.push(letters[0], letters[1]).shift(2)
    else
      letters.push(letters[0]).shift
    end
  end
  return letters.push('ay').join
end

def to_words(string)
  return string.strip.split(' ')
end

def translate(string)
  words = to_words(string)
  words.map! do |word|
    to_pig_latin(word)
  end
  return words.join(' ')
end