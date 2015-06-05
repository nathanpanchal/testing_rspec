class Book
  def cap(string)
    exceptions = ['a', 'an', 'and', 'of', 'the']
    words = string.split(' ')
    words.each do |word|
      if exceptions.include?(word) && word != words[0]

    end
  end
end