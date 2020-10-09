require 'launchy'


def google_searcher
    if !ARGV[0]
        return puts "Vous devez entrer votre recherche (entre guillemets) après le ruby ./google_searcher.rb\nExemple : ruby ./google_seacher.rb \"how to center a div\""
    else
        return Launchy.open("https://www.google.com/search?q="+ARGV[0].gsub(" ", "+"))
    end
end

google_searcher