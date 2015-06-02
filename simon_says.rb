def echo(string)
  return string
end

def shout(string)
  return string.upcase
end

def repeat(string, num = 'not specified')
  num = 2 if num == 'not specified'
  array = []
  num.times do
    array.push(string)
  end
  array.join(' ')
end

def start_of_word(string, num)
  return string[0,num]
end

def first_word(string)
  array = string.strip.split
  return array[0]
end

def titleize(string)
  return string.strip.split.map { |e| e.capitalize }.join(' ')
end