def add(a,b)
    puts "ADDING #{a} + #{b}"
    a + b 
end

def subtract(a,b)
    puts "SUBTRACTING #{a} - #{b}"
    a - b
end

def multiply(a,b)
    puts "MULTIPLYING #{a} * #{b}"
    a * b
end

def divide(a,b)
    puts "DIVIDING #{a} / #{b}"
    a / b
end

age = add(30,5)
height = subtract(78,4)
weight = multiply(90,2)
iq = divide(100,2)

puts "Age: #{age}, Height:#{height},Weight:#{weight},Iq:#{iq}"

#A puzzle for the extra credit. type it in anyway.

puts "Here is a puzzle."

what = add(age, subtract(height, multiply(weight, divide(iq, 2))))

puts "That becomes #{what} Can you do it by hand?"

answer1 = divide(iq,2)
answer2 = multiply(weight,answer1)
answer3 = subtract(height,answer2)
answer4 = add(age,answer3)

puts answer4

#12 + 15 + 25 + 30 = 82
extra1 = add(12,15)
extra2 = add(extra1,25)
extra3 = add(extra2,30)
puts extra3
