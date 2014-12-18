# -*- coding: utf-8 -*-

require 'open-uri'

open("http://zuikaku.me") do |f|
    f.each_line {|line| p line}
    puts f.base_uri #<URI::HTTP:0x40e6ef2 URL:http://zuikaku.me/TRPG/>
    puts f.content_type #"text/html"
    puts f.charset #"iso-8859-1"
    puts f.content_encoding #[]
    puts f.last_modified #2014-11-17 23:15:02 +0800
end
