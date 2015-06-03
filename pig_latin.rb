def translate(word)
  vowels = ['a', 'e', 'i', 'o', 'u']
  letters = word.split(//)
  
  if letters[0]+letters[1] == 'qu'
    letters.push(letters[0], letters[1]).shift(2)
  end

  until vowels.include?(letters[0])
    letters.push(letters[0]).shift
  end

  letters.push('ay').join
end