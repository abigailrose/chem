require_relative 'calc'

class H_pOH < Calc
	
	#returns true is user knows [H+] value
	def know_h?
		puts "Do you know the [H+]?"
		puts "y/n?"
		
		#get user input
		know = self.know?
		return know
		
	end
	
	#returns true if user knows pOH value
	def know_poh?()
		puts "Do you know the pOH?"
		puts "y/n?"
		
		#get user input
		know = self.know?		
		return know
	end
	
	#gets [H+] value
	def get_h()
		puts "What is the [H+] value?"
		c = Float(gets.chomp) rescue nil
		valid = self.c_valid? c
		if valid == true
			return c
		elsif valid == false
			self.invalid
		end
	end
	
	#gets pOH value
	def get_pOH()
		puts "What is the pOH value?"
		p = Float(gets.chomp) rescue nil
		valid = self.p_valid? p
		if valid == true
			return p
		elsif valid == false
			self.invalid
		end
	end
	
end