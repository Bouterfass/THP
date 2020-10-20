require "pry"

class User
    attr_writer :mastercard

    def read_master
        return @mastercard
    end
end

binding pry

puts "end of file"