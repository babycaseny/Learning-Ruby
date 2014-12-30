numbers = []

for i in (0..5)
    puts "At the top i is #{i}"
    numbers.push(i)

    puts "Number now #{numbers}"
    puts "At the bottom i is #{i}"
end

puts "The numbers:"

for num in numbers
    puts num
end
