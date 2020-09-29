array = []

i = 1

while i <= 50 do
    if i < 10
        array << "jean.dupont.0"+i.to_s+"@email.fr"
    else
        array << "jean.dupont."+i.to_s+"@email.fr"
    end
    i += 1
end

array.each do |item|
    number = item[/..@/]
    if (number.to_i % 2) == 0
        puts item
    end
end

