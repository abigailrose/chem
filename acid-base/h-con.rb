require_relative 'calc'
require_relative 'OH-pH'

class H_con < OH_pH
	
	#calculate [H+]
	def calculate()
		k_pH = self.know_ph?
		k_oh = self.know_oh?
		
		#using pH to calculate
		if k_pH == true
			pH = self.get_pH
			@h = 10 ** (-1 * pH)
		#using [OH-] to calculate
		elsif k_oh == true
			oh = self.get_oh
			@h = Float((1 * (10**-14))/(oh))
		end
	end
	
	def out()
		self.put "[H+] concentration", @h
	end
end