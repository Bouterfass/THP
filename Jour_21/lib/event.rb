require 'time'
require "pry"

class Event

    attr_accessor :start_date, :duration, :title, :attendees

    def initialize(start, dur, tit, att)
        @start_date = Time.parse(start)
        @duration = dur 
        @title = tit 
        @attendees = att
    end

    def postpone_24h
        @start_date = @start_date + 60*60*24
    end

    def end_date
        return @start_date + @duration
    end

    def is_past?
        return @start_date < Time.now
    end

    def is_future?
        return !self.is_past?
    end

    def is_soon?
        return @start_date < Time.now + 60 *30 
    end

    def display
        puts "Titre : " + @title
        puts "Date de début : " + @start_date.to_s
        puts "Durée : " + @duration.to_s
        puts "Invitées : " + @attendees.to_s
    end
end

binding pry