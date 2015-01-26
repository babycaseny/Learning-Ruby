## Riförènsing websàits:
## * http://ubuntuforums.org/showthread.php?t=523273
## * http://stackoverflow.com/questions/15401061/custom-sort-method-in-ruby
## * http://stackoverflow.com/questions/4622206/ruby-how-to-pass-a-custom-comparator-to-sort

def splitString(input)
  # Rif: http://ubuntuforums.org/showthread.php?t=523273
  return input.scan(/./)
end 

def 
  # Rif: http://stackoverflow.com/questions/15401061/custom-sort-method-in-ruby

def 
  ar.sort do |a, b|
  case
  when a.x < b.x
    -1
  when a.x > b.x
    1
  else
    a.y <=> b.y
  end
end 

class SizeMatters
# Rif: http://stackoverflow.com/questions/4622206/ruby-how-to-pass-a-custom-comparator-to-sort
  include Comparable
  attr :str
  def <=>(anOther)
    str.size <=> anOther.str.size
  end
  def initialize(str)
    @str = str
  end
  def inspect
    @str
  end
end

s1 = SizeMatters.new("Z")
s2 = SizeMatters.new("YY")
s3 = SizeMatters.new("XXX")
s4 = SizeMatters.new("WWWW")
s5 = SizeMatters.new("VVVVV")

s1 < s2                       #=> true
s4.between?(s1, s3)           #=> false
s4.between?(s3, s5)           #=> true
[ s3, s2, s5, s4, s1 ].sort   #=> [Z, YY, XXX, WWWW, VVVVV]
