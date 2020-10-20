def pyramid_builder()
    puts "Quelle est la taille de votre pyramide ?"
    print "> "
    etage = gets.chomp.to_i

    i = 1
    block = 1
    while i <= etage
        puts " " * (((etage*2) - (i*2))/2) + "o" * block +  " " * (((etage*2) - (i*2))/2)
        i += 1
        block = block + 2
    end
end









def wtf_pyramid_builder()
    puts "Quelle est la taille de votre WTF pyramide ?"
    print "> "
    etage = gets.chomp.to_i
    while etage%2 == 0
        puts "Une WTF pyramide doit avoir une taille impair !"
        print "> "
        etage = gets.chomp.to_i
    end

    i = 0
    block = 1
    while i < ((etage / 2) + 1)
        puts " " * (((etage) - (i*2))/2) + "o" * block +  " " * (((etage) - (i*2))/2)
        i += 1
        block = block + 2
    end

    block = block - 4
    i = i - 1

    while i > 0
        #puts "space "+ ((etage - block)).to_s + " block "+ block.to_s + " i "+ i.to_s
        puts " " * (((etage - block) / 2)) + "o" * block +  " " * (((etage - block) / 2))
        i -= 1
        block = block - 2
    end
end

pyramid_builder()
wtf_pyramid_builder()