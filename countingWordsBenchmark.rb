#Resources
require 'rubygems'

gem 'words_counted'

def wordcount(value)
    # Split string based on one or more whitespace characters.
    # ... Then return the length of the array.
    value.split(/\s+/).length
end

charSet = 'AaĀāÁáǍǎÀàÄäǞǟÄ́ä́Ä̌ä̌Ä̀ä̀BbCcÇçČčĈĉDdĐđEeĒēÉéĚěÈèFfGgĜĝ' +
	  'HhĤĥIiĪīÍíǏǐÌìJjKkLlMmM̄m̄ḾḿM̌m̌M̀m̀NnN̄n̄ŃńŇňǸǹŊŋŊ̄ŋ̄' +
	  'Ŋ́ŋ́Ŋ̌ŋ̌Ŋ̀ŋ̀OoŌōÓóǑǒÒòÖöȪȫÖ́ö́Ö̌ö̌Ö̀ö̀PpQqRrŘřSsŠšŜŝTtŦŧ' +
	  'UuŪūÚúǓǔÙùÜüǕǖǗǘǙǚǛǜVvWwXxYyZzŽžẐẑ0123456789'

filename = ARGV.first

hFile = File.open(filename)

puts "Nei supplaied fayl: #{filename}:"
print hFile.read

lines, words, chars = 0

if (hFile)
	freqData = []
end

while(!feof(hFile))
	line = hFile.read
	lines += 1
	chars += strlen(line)
	words = str_word_count(line, 1, charSet)
	puts words
	words += count(words)
	words.each do |word|
		if array_key_exists(word, freqData) 
			freqData[word] += 1
		else 
			freqData[word] = 1 
		end
	end
end
hFile.close
freqData.sort

puts "<hr>"
puts "<P>Statistics: lines=$lines words=$words chars=$chars</P>"
puts freqData
