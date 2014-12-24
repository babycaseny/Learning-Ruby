def say_hello(my_name,age,game)
    puts "Hello, my name is #{my_name}, #{age} years old."
    puts "Now I am playing a game which call #{game}."
    puts "I hope we can be a friend !"
    puts
    return my_name,age,game 
end

say_hello("Sardo", 20, "Devil Surviver")

my_name = "Chris"
age = 20
game = 'PersonaQ'

say_hello(my_name,age,game)

his_name = "Zuikaku"
age = 20
game = "Kancolle"

say_hello(his_name + " Baka",age + 4, game)

hello = say_hello("Sardo", age, game)

puts hello
