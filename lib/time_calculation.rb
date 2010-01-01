# Author: Abhishek Shukla
# Created on: 1st dec 2010

class TimeCalculation
  
  def initialize(seconds)
    @seconds = seconds
  end

  def parse_time
    hours = (@seconds/3600.00).to_i
    minutes = hours > 0 ? ((@seconds - (hours*60*60))/60.0).to_i : (@seconds/60.0).to_i
    sec = (@seconds - (hours*60*60 + minutes * 60))

    if hours > 0
      hours = hours == 1?  "1:" : hours.to_i.to_s + ":"
    else
      hours = ""
    end

    if minutes > 0
      minutes = minutes == 1?  "1:" : minutes.to_i.to_s + ":"
    else
      minutes = ""
    end

    if sec > 0
      sec = sec == 1?  "1" : sec.to_i.to_s + ""
    else
      sec = "00"
    end

    return hours+minutes+sec

  end
end
