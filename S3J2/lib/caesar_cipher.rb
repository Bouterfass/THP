def caesar_cipher(text, number)
     mod = ''
    text.split('').each do |l|
       if /[[:upper:]]/.match(l)
            mod << ((l.ord + number - 65) % 26 + 65).chr 
       elsif  /[[:lower:]]/.match(l)
            mod << ((l.ord + number - 97) % 26 + 97).chr
       else 
            mod << l
       end
    end
    return mod
end

puts caesar_cipher("What a string!", 5)
