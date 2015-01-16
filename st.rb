require 'rubygems'
require 'mongrel'

class TestHandler < Mongrel::HttpHandler

  def process(request, response)
    response.start(200) do |head, out|
      head["Content-Type"] = "text/html"
      out.write "Hello, World!\n"
    end
  end

end
