#Get text filename from ARGV
filename = ARGV.first
#Get script filename by $0
script = $0

#Show warning message
puts "We're going to erase #{filename}."
puts "If you don't want that, hit CTRL-C(^C)."
puts "If you do want that, hit RETURN."

print "? "

#If user want to edit the file, hit any key to continue
STDIN.gets

#Open text file
puts "Opening the file..."
target = File.open(filename,'w')

#Truncate file to no any space.
puts = "Truncating the file. Goodbye!"
target.truncate(target.size)

#Let user input something.
puts "Now I'm going to ask you for three lines."

print "line 1: "; line1 = STDIN.gets.chomp()
print "line 2: "; line2 = STDIN.gets.chomp()
print "line 3: "; line3 = STDIN.gets.chomp()

#Write user input to the text file
puts "I'm going to write these to the file."

target.write(line1 + "\n" + line2 + "\n" + line3 + "\n")

#Close File
puts "And finally. we close it."

target.close()
