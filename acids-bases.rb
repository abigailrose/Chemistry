calc_type = nil

#ask user for base calculation type
puts "What calculation do you want to do today?"
puts "If you would like to solve for pH or pOH, press 1"
puts "If you would like to solve for [H+] or [OH-], press 2"

#ask for input
while calc_type == nil || calc_type > 2 || calc_type < 1
	calc_type = Integer(gets.chomp, 10) rescue nil
	
	#if input is acceptable, move on to next step
	if calc_type != nil && calc_type <= 2 && calc_type >= 1 then
		break
	end
	
	#if input is invalid, keep asking for input
	puts "Input is invalid, please try again"
	
end

#ask if solving for pH or pOH
if calc_type == 1
	p_type = nil
	
	puts "Would you like to solve for pH or pOH?"
	puts "If you would like to solve for pH, press 1"
	puts "If you would like to solve for pOH, press 2"
	
	#ask for input
	while p_type == nil || p_type > 2 || p_type < 1
		p_type = Integer(gets.chomp, 10) rescue nil
		
		#if input is acceptable, move on to next step
		if p_type != nil && p_type <= 2 && p_type >= 1 then
			break
		end
		
		#if input is invalid, keep asking for input
		puts "Input is invalid, please try again"
		
	end
	
	#begin calculating pH, find known variable
	if p_type == 1
		info_type = nil
		
		puts "What information do you know?"
		puts "If you know the [H+], press 1"
		puts "If you know the pOH, press 2"
		
		#if the user's input is invalid, keep asking for input
		while info_type == nil || info_type > 2 || info_type < 1
			info_type = Integer(gets.chomp, 10) rescue nil
			
			#if input is acceptable, move on to next step
			if info_type != nil && info_type <= 2 && info_type >= 1 then
				break
			end
			
			#if input is invalid, keep asking for input
			puts "Input is invalid, please try again"
			
		end
		
		#calculate pH using [H+]
		if info_type == 1
			h = nil
			puts "What is the [H+]"
			
			#ask for input
			while h == nil
				h = Float(gets.chomp) rescue nil
				
				#if input is acceptable, move on to next step
				if h != nil then
					break
				end
				
				#if input is invalid, keep asking for input
				puts "Input is invalid, please try again"
				
			end
			
			#calculate pH
			pH = -1 * (Math.log10(h))
			
			#return output to user
			puts "The pH is #{pH}"
			puts "Remember, sig figs count after the decimal"
						
		end
		
		#calculate pH using pOH
		if info_type == 2
			oh = nil
			puts "What is the pOH?"
			
			#ask for input
			while oh == nil || oh > 14 || oh < 0
				oh = Float(gets.chomp) rescue nil
				
				#if input is acceptable, move on to next step
				if oh != nil && oh <= 14 && oh >= 0
					break
				end
								
				#if input is invalid, keep asking for input
				puts "Input is invalid, please try again"
				
			end
			
			#calculate pH
			pH = (14 - oh)
			
			#return output to user
			puts "The pH is #{pH}"
			puts "Remember, sig figs count after the decimal"
		end
	
	end
	
	#begin calculating pOH, find known variable
	if p_type == 2
		info_type = nil
		
		puts "What information do you know?"
		puts "If you know the [OH-], press 1"
		puts "If you know the pH, press 2"
		
		#ask for input
		while info_type == nil || info_type > 2 || info_type > 1
			info_type = Integer(gets.chomp, 10) rescue nil
			
			#if input is acceptable, move on to next step
			if info_type != nil && info_type <= 2 && info_type >= 1 then
				break
			end
			
			#if input is invalid, keep asking for input
			puts "Input is invalid, please try again"
			
		end
		
		#calculates pOh using [OH-]
		if info_type == 1
			oh = nil
			puts "What is the [OH-]?"
			
			#ask for input
			while oh == nil
				oh = Float(gets.chomp) rescue nil
				
				#if input is acceptable, move on to next step
				if oh != nil
					break
				end
				
				#if input is invalid, keep asking for input
				puts "Input is invalid, please try again"
				
			end
			
			#calculate pOH
			pOH = -(Math.log10(oh))
			
			#return output to user
			puts "The pOH is #{pOH}"
			puts "Remember, sig figs count after the decimal"
		end
	end
	
	#calculates pOh using pH
	if info_type == 2
		pH = nil
		puts "What is the pH?"
		
		#ask for input
		while pH == nil || ph > 14 || ph < 0
			pH = Integer(gets.chomp, 10) rescue nil
			
			#if input is acceptable, move on to next step
			if ph != nil && ph <= 14 && pH >= 0 then
				break
			end
			
			#if input is invalid, keep asking for input
			puts "Input is invalid, please try again"
			
		end
		
		#calculates pOH
		pOH = (14 - pH)
		
		#returns output to user
		puts "The pOH is #{pOH}"
		puts "Remember, sig figs count after the decimal"
	end
end
#ask if solving for [H+] or [OH-]	
if calc_type == 2
	c_type = nil
	puts "Would you like to solve for [H+] or [OH-]?"
	puts "If you would like to solve for [H+], press 1"
	puts "If you would like to solve for [OH-], press 2"
	
	#ask for input
	while c_type == nil || c_type > 2 || c_type < 1
		c_type = Integer(gets.chomp, 10) rescue nil
		
		#if input is acceptable, move on to next step
		if c_type != nil && c_type <= 2 && c_type >= 1 then
			break
		end
		
		#if input is invalid, keep asking for input
		puts "Input is invalid, please try again"
		
	end
	
	#begin solving for [H+]
	if c_type == 1
		#get known information
		info_type = nil
		puts "What information do you know?"
		puts "If you know the pH, press 1"
		puts "If you know the [OH-], press 2"
		
		#ask for input
		while info_type == nil || info_type > 2 || info_type < 1
			info_type = Integer(gets.chomp, 10) rescue nil
		
			#if input is acceptable, move on to next step
			if info_type != nil && info_type <= 2 && info_type >= 1 then
				break
			end
		
			#if input is invalid, keep asking for input
			puts "Input is invalid, please try again"
		
		end
		
		#solve for [H+] using pH
		if info_type == 1
			pH = nil
			puts "What is the pH?"
			
			#ask for input
			while pH == nil || pH > 14 || pH < 0
				pH = Integer(gets.chomp, 10) rescue nil
				
				#if input is acceptable, move on to next step
				if pH != nil && pH <= 14 && pH >= 0 then
					break
				end
				
				#if input is invalid, keep asking for input
				puts "Input is invalid, please try again"
				
			end
			
			#calculate [H+]
			h = 10 ** -(pH)
			
			#return output to user
			puts "[H+] is #{h}"
			
		end
		
		#solve for [H+] using [OH-]
		if info_type == 2
			oh = nil
			puts "What is the [OH-]?"
			
			#ask for input
			while oh == nil
				oh = Float(gets.chomp) rescue nil
				
				#if input is acceptable, move on to next step
				if oh != nil then
					break
				end
				
				#if input is invalid, keep asking for input
				puts "Input is invalid, please try again"
				
			end
			
			#calculate [H+]
			h = ((1 * (10**-14))/(oh))
			
			#return output to user
			puts "The [H+] is #{h}"
		end
		
	end
	
	#begin solving for [OH-]
	if c_type == 2
		#get known variable
		info_type = nil
		puts "What information do you have?"
		puts "If you have the pOH, press 1"
		puts "If you have the [H+], press 2"
		
		#ask for input
		while info_type == nil || info_type > 2 || info_type < 1
			info_type = Integer(gets.chomp, 10) rescue nil
			
			#if input is acceptable, move on to next step
			if info_type != nil && info_type <= 2 && info_type >= 1 then
				break
			end
			
			#if input is invalid, keep asking for input
			puts "Input is invalid, please try again"
			
		end
		
		#start solving using pOH
		if info_type == 1
			pOH = nil
			puts "What is the pOH?"
			
			#asks for input
			while pOH == nil || pOH > 14 || pOH < 0
				pOH = Integer(gets.chomp, 10) rescue nil
				
				#if input is acceptable, move on to next step
				if pOH != nil && pOH <= 14 && pOH >= 0 then
					break
				end
				
				#if input is invalid, keep asking for input
				puts "Input is invalid, please try again"
				
			end
			
			#calculate [OH-]
			oh = 10 ** -(pOH)
			
			#return output to user
			puts "[OH-] is #{oh}"
			
		end
		
		#start solving using [H+]
		if info_type == 2
			h = nil
			puts "What is the [H+]"
			
			#ask for input
			while h == nil || h <= 0
				h = Integer(gets.chomp) rescue nil
				
				#if input is acceptable, move on to next step
				if h != nil || h > 0 then
					break
				end
				
				#if input is invalid, keep asking for input
				puts "Input is invalid, please try again"
				
			end
			
			#calculate [OH-]
			oh = ((1 * (10 ** -14))/ h)
			
			#return output to user
			puts "[OH-] is #{oh}"		
			
		end
		
	end
	
end