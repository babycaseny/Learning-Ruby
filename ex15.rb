#Get the filename from user by ARGV.first
filename = ARGV.first

#Set prompt value
prompt = ">"

#Use File.open() to open the file by provided filename
txt = File.open(filename)

#Show filename
puts "Here's your file: #{filename}"

#Show file content by read()
puts txt.read()

txt.close()

#Get filename again by user's input
puts "Type the filename again:"
print prompt
file_again = STDIN.gets.chomp()

#Use File.open() to open the file by provided filename again
txt_again = File.open(file_again)

#Show file content by read() again
puts txt_again.read()

txt_again.close()
