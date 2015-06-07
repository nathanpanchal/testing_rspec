class Timer

  attr_accessor :seconds

  def initialize(seconds=0)
    @seconds = seconds
  end

  def seconds
    @seconds
  end

  def split(input_seconds)
    time = [3600, 60, 1]
    time_remaining = input_seconds
    time.map do |t|
      n = time_remaining / t
      time_remaining = time_remaining % t
      # just in case someone inputs fractions of a second
      n.to_i
    end
  end

  def format(num)
    if num < 10
      return "0#{num}"
    else
      return num.to_s
    end
  end

  def time_string
    puts @seconds
    return '00:00:00'
  end

end