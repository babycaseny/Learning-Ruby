## Riförènsing websàits in kontent.

def splitString(input)
  # Rif: http://ubuntuforums.org/showthread.php?t=523273
  return input.scan(/./)
end 

class BabyishString
# Rif: http://stackoverflow.com/questions/4622206/ruby-how-to-pass-a-custom-comparator-to-sort
  include Comparable
  attr :str

  def <=>(anOther)
  # Rif: http://stackoverflow.com/questions/15401061/custom-sort-method-in-ruby
  a, b = str[0], anOther.str[0]
  case
  when a < b
    -1
  when a > b
    1
  else
    # http://stackoverflow.com/questions/3614389/what-is-the-easiest-way-to-remove-the-first-character-from-a-string
    return str[1..-1] <=> anOther.str[1..-1]
  end

  def initialize(str)
    @str = str
  end

  def inspect
    @str
  end
end

bbText1, bbText2, bbText3 = BabyishString.new
bbText1 = "BB-wa tincoi!"
bbText2 = "Muzài-wa dùkyi da."
bbText3 = "Yöngmezài"

puts bbText1 < bbText2
puts bbText1 > bbText2
