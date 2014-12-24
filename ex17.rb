from_file,to_file = ARGV
script = $0

#We could do these two on one line too, how?

indata = File.open(from_file).read()

output = File.open(to_file,'w')
output.write(indata)

puts "Alright,all done."

output.close()
input.close()

