# See also: https://github.com/mongodb/mongo-ruby-driver/wiki/Tutorial
# Resources
require 'rubygems'  # not necessary for Ruby 1.9
require 'mongo'

# Include Mongo so that the Mongo classes are available 
# without having to specify the Mongo namespace.
include Mongo

# Syntax: http://docs.mongodb.org/ecosystem/tutorial/ruby-driver-tutorial/#ruby-driver-tutorial
mongo_client = Mongo::Client.new([ 'MW-GAMP103240:60001' ], :database => 'benchmark', :connect => :sharded)

charSet = 'AaĀāÁáǍǎÀàÄäǞǟÄ́ä́Ä̌ä̌Ä̀ä̀BbCcÇçČčĈĉDdĐđEeĒēÉéĚěÈèFfGgĜĝ' +
	  'HhĤĥIiĪīÍíǏǐÌìJjKkLlMmM̄m̄ḾḿM̌m̌M̀m̀NnN̄n̄ŃńŇňǸǹŊŋŊ̄ŋ̄' +
	  'Ŋ́ŋ́Ŋ̌ŋ̌Ŋ̀ŋ̀OoŌōÓóǑǒÒòÖöȪȫÖ́ö́Ö̌ö̌Ö̀ö̀PpQqRrŘřSsŠšŜŝTtŦŧ' +
	  'UuŪūÚúǓǔÙùÜüǕǖǗǘǙǚǛǜVvWwXxYyZzŽžẐẑ0123456789-'

filename = ARGV.first
puts "Nei supplaied fayl: #{filename}:"

lines, words, chars = 0
freqData = nil
File.open(filename) do |hFile|
    hFile.each_line do |line|
        lines += 1
        chars += strlen(line)
        words = str_word_count(line, 1, charSet)
        puts words
        words += count(words)
        counter.word_occurrences.each_key do |key|
            puts key
            # occurrence: "we"      => 1
            # put it into MongoDB
            post = mongo_client.find( :_id => key ).first
            if post
                post[:author] = "Ethan Gunderson"
                mongo_client.update( { :_id => post_id }, post )
            else
                new_post = { :title => "RubyLearning.com, its awesome", 
		             :content => "This is a pretty sweet way to learn Ruby", 
                             :created_on => Time.now }
                post_id = mongo_client.insert(new_post)
             end
        end
    end
end

hFile.close
freqData.sort

puts "<hr>"
puts "<P>Stätistiks: lines=#{lines} words=#{words} chars=#{chars}.</P>"
puts freqData
