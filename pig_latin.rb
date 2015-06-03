def translate(word)
  vowels = ['a', 'e', 'i', 'o', 'u']
  letters = word.split(//)
  until vowels.include?(letters[0])
    if letters[0]+letters[1] == 'qu'
      letters.push(letters[0], letters[1]).shift(2)
    else
      letters.push(letters[0]).shift
    end
  end
  letters.push('ay').join
end