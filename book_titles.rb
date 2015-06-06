class Book

  attr_accessor :title

  def initialize(title='')
    @title = title
  end

  def title
    exceptions = ['a', 'an', 'and', 'in', 'of', 'the']
    words = @title.split(' ')
    words.each do |word|
      if exceptions.include?(word) && word != words[0]
      else
        word.capitalize!
      end
    end
    return words.join(' ')
  end

end