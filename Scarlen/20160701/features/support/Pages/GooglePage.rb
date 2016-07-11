def main_Page
		@main_page ||= GooglePage.new
		
end

class GooglePage
	include Capybara::DSL
	attr_reader :title, :subtitle

	def initialize
		@title = page.find('h1')
		@subtitle = page.find('h3')	
		@input_name = page.find_by_id('fname')
	end

	def insert_name(name)
		@input_name.set name
	end




end