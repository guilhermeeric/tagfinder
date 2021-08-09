require_relative '../parser'

class Find < Command
  def initialize(url, text)
    @url = url
    @text = text
  end

  def execute
    puts "Searching for #{@text} on the url #{@url}..."
    parser = Parser.new(@url)
    result = parser.find_text_in_document(@text)
    if !result.nil?
      puts result
    else
      puts "No text found."
    end
  end
end
