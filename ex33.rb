module Ex33

  def Ex33.pushint(num)

    i = 0
    numbers = []

    while i < num
      puts "At the top i is #{i}"
      numbers.push(i)

      i += 1
      puts "Numbers now: ", numbers
      puts "At the bottom i is #{i}"
    end

    print "The numbers are: "

    # remember you can write this 2 other ways?
    numbers.each { |nume| print "%d, " % nume }

    puts ".\n"
    return numbers
  end

end
