require_relative 'calc'
require_relative 'H-pOH'

class OH_con < H_pOH
	
	#calculate [OH-]
	def calculate()
		k_poh = self.know_poh?
		k_h = self.know_h?
		
		#using pOH to calculate
		if k_poh == true
			k_h = false
			pOH = self.get_pOH
			@oh = 10 ** -(pOH)
		#using [H+] to calculate
		elsif k_h == true
			k_poh = false
			h = self.get_h
			@oh = ((1 * (10 ** -14))/ h)
		end
	end
	
	def out()
		self.put "[OH-] concentration", @oh
	end
end