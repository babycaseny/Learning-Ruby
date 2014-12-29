puts "Let's practice everything."

#Using escapres char like \', \n and \t.
puts "You\'d need to know \'bout escapes with \\ that do \n newlines and \t tabs."

#Using <<Name to save a paragraph of string
poem = <<MULTI_LINE_STRING

\tThe lovely world
with logic so firmly planted
cannot discern \n the needs of love
nor comprehend passion from intuition
and requires an explanation
\n\t where there is none.

MULTI_LINE_STRING

puts "-----------"
puts poem
puts "-----------"

five = 10 - 2 + 3 - 6
puts "This should be five: #{five}"

#def function for calcutlate the number of jelly_beans, jars and crates
def secret_formula(started)
    jelly_beans = started * 500
    jars = jelly_beans / 1000
    crates = jars / 100
    return jelly_beans, jars,crates
end

start_point = 10000

#Call secret_formula function with start_point.
beans, jars, crates = secret_formula(start_point)

#Show ouput with variable
puts "With a starting point of #{start_point}"
puts "We'd have #{beans} beans, #{jars} jars and #{crates} crates."

start_point = start_point / 10

#Show output with formatter
puts "We can also do that this way:"
puts "We'd have %s beans %s jars, and %s crates." % secret_formula(start_point)
