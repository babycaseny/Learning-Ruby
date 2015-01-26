require 'rubygems'
require 'mongrel' ## http://zh.wikipedia.org/wiki/%E6%B7%B7%E7%A8%AE%E7%8B%97

class TestHandler < Mongrel::HttpHandler

  def process(request, response)
    response.start(200) do |head, out|
      head["Content-Type"] = "text/html"
      out.write "Hello, World!\n"
    end
  end

end
