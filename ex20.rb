#Get file from ARGV[0]
input_file = ARGV[0]

#Print full file
def print_all(f)
    puts f.read()
end

#Rewind the text of file
def rewind(f)
    f.seek(0, IO::SEEK_SET)
end

#Print file content with only 1 line and number of line
def print_a_line(line_count, f)
    puts "#{line_count} #{f.readline()}"
end

#Open the input file
current_file = File.open(input_file)

#Print a blank line and call print_all function
puts "First let's print the whole file:"
puts # a blank line

print_all(current_file)

#Call rewind function
puts "Now let's rewind, kind of like a tape."

rewind(current_file)

#Count the line number and all print_a_line function
puts "Lets print three lines:"

current_line = 1
print_a_line(current_line,current_file)

current_line = current_line + 1
print_a_line(current_line, current_file)

current_line = current_line + 1
print_a_line(current_line, current_file)

