require 'mechanize'

class Parser
	def initialize(url)
		@url = url
	end

	def find_text_in_document(text)
		agent = Mechanize.new
		page = agent.get(@url)
		result = page.search(":contains('#{text}'):not(:has(:contains('#{text}')))")
		if !result.to_s.empty?
			return result
		end
		return nil
	end
end
