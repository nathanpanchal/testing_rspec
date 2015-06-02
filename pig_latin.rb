def translate(word)
  vowels = ['a', 'e', 'i', 'o', 'u']
  letters = word.split(//)
  until vowels.include?(letters[0])
    letters.push(letters[0]).shift
  end
  letters.push('ay').join
end

