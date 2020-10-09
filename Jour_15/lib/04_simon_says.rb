def echo(text)
    return text
end

def shout(text)
    return text.upcase
end

def repeat(text, *number)
    return number[0] ? ((text+" ") * number[0].to_i).strip! : text+" "+text
end

def start_of_word(text, number)
    return text[0, number.to_i]
end

def first_word(text)
    return text.split.first
end

def titleize(text)
    little_words = ["and", "the", "or", "of"]
    return text.capitalize().split.map{|word| little_words.include?(word) ? word : word.capitalize()}.join(" ")
end


