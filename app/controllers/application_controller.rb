class ApplicationController < ActionController::Base
	
	protect_from_forgery with: :exception


	before_action :geo_pattern
	def geo_pattern
		@pattern = GeoPattern.generate('Mastering Markdown', patterns: :plaid, base_color: '#FFFFFF')
		@pattern.to_svg
	end

end
#color: '#0154A6'