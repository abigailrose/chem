require_relative 'calc'
require_relative 'OH-pH'

class POH < OH_pH
	
	#calculate pOH
	def calculate()
		k_oh = self.know_oh?
		k_ph = self.know_ph?
		
		#using [OH-] to calculate
		if k_oh == true
			k_ph = false
			oh = self.get_oh
			@pOH = -1 * (Math.log10(oh))		
		#using pH to calculate
		elsif k_ph == true
			k_oh = false
			pH = self.get_pH
			@pOH = (14 - pH)
		end
	end
	
	def out()
		self.put "pOH", @pOH
	end
end