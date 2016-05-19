require_relative 'calc'

class OH_pH < Calc
	
	#returns true if user knows pH value
	def know_ph?()
		puts "Do you know the pH?"
		puts "y/n?"
		
		know = self.know?
		#get user input
		return know		
	end
	
	#returns true if user knows [OH-] value
	def know_oh?()
		puts "Do you know the [OH-]?"
		puts "y/n?"
		
		#get user input
		know = self.know?
		#get user input
		return know
	end
	
	#gets pH value
	def get_pH()
		puts "What is the pH value?"
		
		while p == nil
			p = Float(gets.chomp) rescue nil
			valid = self.p_valid? p
			if valid == true
				return p
			elsif valid == false
				self.invalid
			end
		end
	end
	
	#gets [OH-] value
	def get_oh()
		puts "What is the [OH-] value?"
		c = Float(gets.chomp) rescue nil
		valid = self.c_valid? c
		if valid == true
			return c
		elsif valid == false
			self.invalid
		end
	end

end