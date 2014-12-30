def whileLoop(limit)

    i = 0
    numbers =[]
    plus = 5

    while i < limit
        puts "At the top i is #{i}"
        numbers.push(i)

        i += plus
        puts "Numbers now: #{numbers}"
        puts "At the bottom is #{i}"
    end

    return numbers
end

limit = 10

numbers = whileLoop(10)

puts "The numbers:"

#remember you can write this 2 other ways?
numbers.each {|num| puts num}
