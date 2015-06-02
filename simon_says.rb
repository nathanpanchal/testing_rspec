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