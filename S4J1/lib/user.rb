require "pry"

class User

    attr_accessor :email, :age
    @@users = {}

    def initialize(email_to_save, age)
        @email = email_to_save
        @age = age 
        @@users.store(email_to_save, age)
    end

    def self.print_users
        return @@users
    end

    def self.find_by_email(email)
         puts "L'utilisateur #{email} a #{@@users[email]} ans !" 
    end
end


binding pry
