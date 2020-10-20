def translate(text)
    text = text.split
    stock = []

    text.each do |t|
        i = 0
        count = 0
        if t[0,3] == "sch"
            count = 1
        elsif t[0,2] == "qu"
            count = 1
        else
            while i < 3 and !("aeiouy").include?(t[i])
                if i == 1 and t[i,i + 1] == "qu"
                    count += 1
                    break
                end
                count += 1
                i = i + 1
            end
        end

        if count == 0
            stock << t+"ay"
        end
        if count == 1 
            if t[0,2] == "qu"
                stock << t[2..-1].concat(t[0,2])+"ay"
            elsif t[0,3] == "sch"
                stock << t[3..-1].concat(t[0,3])+"ay"
            else
                stock << t[1..-1].concat(t[0,1])+"ay"
            end
        end

        if count == 2
            if t[1,2] == "qu"
                stock << t[3..-1].concat(t[0,3])+"ay"
            else
                stock << t[2..-1].concat(t[0,2])+"ay"
            end
        end

        if count == 3
            stock << t[3..-1].concat(t[0,3])+"ay"
        end
    end
    return stock.join(" ")
end 




