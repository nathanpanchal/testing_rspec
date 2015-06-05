class Book
  def initialize(title)
    @title = title
  end

  def title(title)
    exceptions = ['a', 'an', 'and', 'in', 'of', 'the']
    words = string.split(' ')
    words.each do |word|
      if exceptions.include?(word) && word != words[0]
      else
        word.capitalize!
      end
    end
    return words.join(' ')
  end

  def title
    @title
  end
end