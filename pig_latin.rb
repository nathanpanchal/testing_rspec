def translate(word)
  vowels = ['a', 'e', 'i', 'o', 'u']
  letters = word.split(//)
  if vowels.include?(letters[0])
    return letters.push("ay").join
  else
    letters.push(letters[0], 'ay').shift
    return letters.join
  end
end