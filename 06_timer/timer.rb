class Timer
  #write your code here
  attr_accessor :seconds
  def initialize
  	@seconds = 0
  end

  def time_string
  	hour = 0
  	minute = 0
  	second = 0

  	hour = (@seconds / 3600).floor
  	minute =((@seconds - hour * 3600)/60).floor
  	second = @seconds - hour*3600 - minute * 60

  	hour = time_ten(hour)
  	minute = time_ten(minute)
  	second = time_ten(second)

  	hour +":"+ minute+":"+second

  end # time_string

  private

  def time_ten(time)
  	if time <10
  		 "0"+time.to_s
  	else
  		 time.to_s
  	end	# if
  end # time_ten

end  #class

#@timer = Timer.new
