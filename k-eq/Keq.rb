class Chemistry
	
	class PercentError
		def measure()
			#getting measured value via user input
			puts "What is your measured value (please do not include units)?"
			@measured = Float(gets.chomp) rescue nil
			while @measured == nil
				puts "Not a valid input, please try again"
				@measured = Float(gets.chomp) rescue nil
			end
		end
    
		def accept()
			#getting accepted value via user input
			puts "What is your accepted value (please do not include units)?"
			@accepted = Float(gets.chomp) rescue nil
			while @accepted == nil
				puts "Not a valid input, please try again"
				@accepted = Float(gets.chomp) rescue nil
			end
		end
    
		def calc()
			error = ((@measured-@accepted)/@accepted)*100
			puts "Percent error is #{error}"
		end
	end

	class EquilibriumConstant
	
		def get_reactants()
			 #asking for number of reactants
			 puts "How many gaseous reactants?"
			 @reactant_number = Integer(gets.chomp, 10) rescue nil
			 #rejects non-integer values
			 while @reactant_number == nil
			     puts "Not a valid input, please try again"
			     @reactant_number = Integer(gets.chomp, 10) rescue nil
			 end
			 @reactant_array = Array[]
		end
	
		def get_products()
			  #asking for number of products
			  puts "How many gaseous products?"
			  @product_number = Integer(gets.chomp, 10) rescue nil
			  #rejects non-integer values
			  while @product_number == nil
			      puts "Not a valid input, please try again"
			      @product_number = Integer(gets.chomp, 10) rescue nil
			  end
			  @product_array = Array[]
		end
	
		def get_molarity()
			
			  puts "You have #{@reactant_number} reactants, now we need the molarity"
		
			  counter = 1
			  while counter <= @reactant_number
			      puts "What is the molarity of reactant #{counter}?"
			      r_input = Float(gets.chomp) rescue nil
			      while r_input == nil
			          puts "Not a valid input, please try again"
			          r_input = Float(gets.chomp) rescue nil
			      end
			      puts "What is the coefficient of reactant #{counter}?"
			      r_co = Integer(gets.chomp, 10) rescue nil
			      while @reactant_number == nil
			          puts "Not a valid input, please try again"
			          r_co = Integer(gets.chomp, 10) rescue nil
			      end
			      r_input = r_input**r_co
			      @reactant_array << r_input
			      counter += 1
			  end
			  
			  @reactant_total = reactant_array.inject(:*)
		
			  puts "You have #{@product_number} products, now we need the molarity"
			
			  counter = 1
			  while counter <= @product_number
			      puts "What is the molarity of product #{counter}?"
			      p_input = Float(gets.chomp) rescue nil
			      while @reactant_number == nil
			          puts "Not a valid input, please try again"
			          p_input = Float(gets.chomp) rescue nil
			      end
			      puts "What is the coefficient of product #{counter}?"
			      p_co = Integer(gets.chomp, 10) rescue nil
			      while p_co == nil
			          puts "Not a valid input, please try again"
			          p_co = Integer(gets.chomp, 10) rescue nil
			      end
			      p_input = p_input**p_co
			      @product_array << p_input
			      counter += 1
			  end
			  
			  @product_total = product_array.inject(:*)
		end
	
		def k_eq()	
			k = (@product_total/@reactant_total)
			keq = k.round(4)
			
			puts "Equilibrium constant K is #{keq}"
		end
	end
end

#prints initial output
puts "What type of calculation would you like to do?"
puts "If you would like to do a percent error calculation, press '1'"
puts "If you would like to do an equilibrium constant calculation, press '2'"
#gets user input
type = Integer(gets.chomp) rescue nil
#catches non integer input
if type == nil
	puts "Invalid input, please try again"
end
#gets the user input for compution

if type == 1
	c = PercentError.new
	c.measure
	c.accept
	c.calc
elsif type == 2
	c = EquilibriumConstant.new
	c.get_reactants
	c.get_products
	c.get_molarity
	c.k_eq
else
	puts "Please choose a calculation"
end

