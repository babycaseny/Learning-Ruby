name = 'Sardo'
age = 20
height = 56 * 2.54 #inches
weight = 75 * 0.45 #lbs to kg
eyes = 'black'
teeth = 'white'
hair = 'black'

puts "Let's talk about %s" % name
puts "She's %d cm tall." %height
puts "She's %d kg heavy." %weight
puts "Actually that's not too heavy."
puts "she's got %s eyes and %s hair." % [eyes,hair]
puts "Her teeth are usually %s depending on the coffee." %teeth

# this line is tricky, try to get it exactly right
puts "If I add %d, %d, and %d I get %d." % [
    age,height,weight,age + height + weight]
