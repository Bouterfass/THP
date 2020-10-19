require 'csv'
require 'json'
require 'pry'

class Gossip

    attr_accessor :auteur, :potin

    def initialize(auteur, content)
        @auteur = auteur
        @potin = content
    end

    def save
        #save into a JSON file
        tmpHash = {@auteur => @potin}

        if File.empty?('/home/youcef/Desktop/THP/Jour_26/db/gossip.json') == true
            File.open('/home/youcef/Desktop/THP/Jour_26/db/gossip.json', "w") do |f|
                f.puts JSON.pretty_generate(tmpHash.to_a.map{|x, y| {x => y}})
            end
        else
            sec = JSON.parse(File.read('/home/youcef/Desktop/THP/Jour_26/db/gossip.json')) << tmpHash
            File.open('/home/youcef/Desktop/THP/Jour_26/db/gossip.json', "w") do |f|
                f.puts JSON.pretty_generate(sec)
            end
        end

        #save into a csv file
        CSV.open("/home/youcef/Desktop/THP/Jour_26/db/gossip.csv", "a+") do |csv|
            csv << [@auteur, @potin]
        end
    end  

    def self.all
       
        array_of_gossips = []
        CSV.foreach("/home/youcef/Desktop/THP/Jour_26/db/gossip.csv") do |row|
            array_of_gossips << Gossip.new(row[0], row[1])
        end
        return array_of_gossips
    end

    def self.delete(auteur)
        table = CSV.table("/home/youcef/Desktop/THP/Jour_26/db/gossip.csv")
        table.delete_if do |row|
            row[0] == auteur
        end

        File.open("/home/youcef/Desktop/THP/Jour_26/db/gossip.csv", 'w') do |f|
            f.write(table.to_csv)
          end
    end
end


