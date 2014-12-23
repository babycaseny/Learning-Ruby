prompt = "> "

puts "Type the filename here:"
print prompt
fileName = STDIN.gets.chomp()

puts "Here's your file: #{fileName}"

content = File.open(fileName)

puts content.read()
