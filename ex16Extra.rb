filename = ARGV.first

file = File.open(filename)

puts "Here is the content of file:"

puts file.read()
