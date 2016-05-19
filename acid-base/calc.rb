class Calc
	
	#called when user enters an unusable input
	def invalid()
		puts "Input is invalid, please try again"
	end
	
	#checks to see if user knows value
	def know?()
		know = nil
		#get user input
		while know == nil
			know = gets.chomp
			know.downcase
			
			#check to see boolean value
			if know == 'y'
				return true
				break
			elsif know == 'n'
				return false
				break
			else
				self.invalid
				know = nil
			end
		end
	end
	
	#tests validity of pH and pOH values
	def p_valid?(p)
		if p != nil && p <= 14 && p >= 0
			return true
		else
			return false
		end
	end
	
	#tests validity of [] values
	def c_valid?(c)
		if c > 0 && c != nil
			return true
		else
			return false
		end
	end
	
	def put(type, answer)
		puts "#{type} is #{answer}"
	end
	
end