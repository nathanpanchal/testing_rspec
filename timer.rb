class Timer

  attr_accessor :seconds

  def initialize(seconds=0)
    @seconds = seconds
  end

  def seconds
    @seconds
  end

  def format(num)
    if num < 10
      return '0' + num.to_s
    else
      return num.to_s
    end
  end

  def split(seconds)
    time = [3600, 60, 1]
    time_remaining = seconds
    time.map do |t|
      n = time_remaining / t
      time_remaining = time_remaining % t
      format(n.to_i)
    end
  end

  def time_string
    array = split(@seconds)
    return "#{array[0]}:#{array[1]}:#{array[2]}"
  end

end