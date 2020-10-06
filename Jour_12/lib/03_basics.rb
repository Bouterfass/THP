def who_is_bigger(a, b, c)
    
    if !a or !b or !c 
        return "nil detected"
    elsif a == [a, b, c].max
        return "a is bigger" 
    elsif b == [a, b, c].max
        return "b is bigger"
    else
        return "c is bigger"
    end
    return 0
end

def reverse_upcase_noLTA(text)
    return text.reverse.upcase.delete("LTA")
end

def array_42(array)
    return array.include?(42)
end

def magic_array(array)
    return array.flatten.sort.map{|x| x*2}.reject!{|x| x%3==0}.uniq.sort
end

