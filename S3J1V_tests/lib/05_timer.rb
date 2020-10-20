def time_string(time)
    hours = time / 3600
    reste = time - hours * 3600
    minutes = reste / 60
    seconds = reste - minutes * 60
    return ((0..9).include?(hours) ? "0"+hours.to_s : hours).to_s + ":" + ((0..9).include?(minutes) ? "0"+minutes.to_s : minutes).to_s + ":" + ((0..9).include?(seconds) ? "0"+seconds.to_s : seconds).to_s
end 

