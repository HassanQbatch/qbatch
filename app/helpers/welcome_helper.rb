module WelcomeHelper
	def google_map(center)
		"https://maps.googleapis.com/maps/api/staticmap?center=#{center}&size=1000x300&zoom=15&markers=color:red%7Clabel:C%7C31.421714,73.063210"
	end
end
