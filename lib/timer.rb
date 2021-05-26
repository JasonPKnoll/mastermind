class Timer
  attr_reader :time1, :time2

  def initialize
    @time1 = 0.000000
    @time2 = 0.000000
  end

  def start_time
    @time1 = Time.new
  end

  def stop_time
    @time2 = Time.new
  end

  def timer_converter_seconds
    time = @time2 - @time1
    seconds_remaining = (time % 60).round(0)
  end

  def timer_converter_minutes
    time = @time2 - @time1
    minutes = (time / 60).floor
  end
end
