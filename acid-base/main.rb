require_relative 'calc'
require_relative 'OH-pH'
require_relative 'H-pOH'
require_relative 'poh'
require_relative 'h-con'
require_relative 'oh-con'
require_relative 'ph'

type = nil

while type == nil || type != "exit"
	puts "What type of calculation would you like to do today?"
	puts "Type 'pH' to solve for pH"
	puts "Type 'pOH' to solve for pOH"
	puts "Type 'OH' to solve for [OH-]"
	puts "Type 'H' to solve for [H+]"
	puts "Type 'exit' to exit"

	type = gets.chomp
	type.downcase!
	
	if type == "ph"
		calc = PH.new
	elsif type == "poh"
		calc = POH.new
	elsif type == "h"
		calc = H_con.new
	elsif type == "oh"
		calc = OH_con.new
	elsif type == "exit"
		calc = 0
	else
		type = nil
		calc = nil
	end
	
	if calc != nil && calc != 0
		calc.calculate
		calc.out
	elsif calc == 0
		puts "See you later!"
	end
end