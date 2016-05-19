require_relative 'calc'
require_relative 'H-pOH'

class PH < H_pOH
	
	#calculate pH
	def calculate()
		k_h = self.know_h?
		k_poh = self.know_poh?
		
		#using [H+] to calculate
		if k_h == true
			k_poh = false
			h = self.get_h
			@pH = -1 * (Math.log10(h))
		#using pOH to calculate
		elsif k_poh == true
			k_h = false
			pOH = self.get_pOH
			@pH = (14 - pOH)
		end
	end
	
	def out()
		self.put "pH", @pH
	end
end