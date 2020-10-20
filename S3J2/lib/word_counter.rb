dictionnary = ["below", "down", "go", "going", "horn", "how", "howdy", "it", "i", "low", "own", "part", "partner", "sit"]


def word_counter(word, array)
    count_entire_word = array.count{|x| x == word}
    hash = {}
    hash[word] = count_entire_word
    return hash
end


puts word_counter("below", dictionnary)