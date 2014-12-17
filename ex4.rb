cars = 100 #Number of cars
space_in_a_car = 4.0 #Max Number of passengers on car
drivers = 30 #Number of drivers
passengers = 90 #Number of passengers

cats_not_driven = cars - drivers #Number of car which are no drivers
cars_driven = drivers #Number of car which have drivers
carpool_capacity = cars_driven * space_in_a_car #How many people can be transport today
average_passengers_per_car = passengers / cars_driven #How many people can be transport per car

# Show how many cars are there 
puts "There are #{cars} cars available"
# Show how many driver are there
puts "There are only #{drivers} drivers available"
#Show how many empty car are there
puts "There will be #{cars_not_driven} empty cars today."
#Show how many people can be transport today
puts "We can transport #{carpool_capacity} people today."
#Show how many people can be transport per car
puts "We need to put about #{average_passengers_per_car} in each car."
