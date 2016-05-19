k_equilibrium;
percent_error;

def percent_error()
  
  #getting measured value via user input
  puts "What is your measured value (please do not include units)?"
  measured = Float(gets.chomp) rescue nil
  while measured == nil
	  puts "Not a valid input, please try again"
	  measured = Float(gets.chomp) rescue nil
  end
  
  #getting accepted value via user input
  puts "What is your accepted value (please do not include units)?"
  accepted = Float(gets.chomp) rescue nil
  while accepted == nil
	  puts "Not a valid input, please try again"
	  accepted = Float(gets.chomp) rescue nil
  end
  
  error = ((measured-accepted)/accepted)*100
  puts "Percent error is #{error}"
end


#this method calculates the equilibrium constant
def k_equilibrium()
  #asking for number of reactants
  puts "How many gaseous reactants?"
  reactant_number = Integer(gets.chomp, 10) rescue nil
  #rejects non-integer values
  while reactant_number == nil
      puts "Not a valid input, please try again"
      reactant_number = Integer(gets.chomp, 10) rescue nil
  end
  reactant_array = Array[]
  #asking for number of products
  puts "How many gaseous products?"
  product_number = Integer(gets.chomp, 10) rescue nil
  #rejects non-integer values
  while product_number == nil
      puts "Not a valid input, please try again"
      product_number = Integer(gets.chomp, 10) rescue nil
  end
  product_array = Array[]

  puts "You have #{reactant_number} reactants, now we need the molarity"

  counter = 1
  while counter <= reactant_number
      puts "What is the molarity of reactant #{counter}?"
      r_input = Float(gets.chomp) rescue nil
      while r_input == nil
          puts "Not a valid input, please try again"
          r_input = Float(gets.chomp) rescue nil
      end
      puts "What is the coefficient of reactant #{counter}?"
      r_co = Integer(gets.chomp, 10) rescue nil
      while reactant_number == nil
          puts "Not a valid input, please try again"
          r_co = Integer(gets.chomp, 10) rescue nil
      end
      r_input = r_input**r_co
      reactant_array << r_input
      counter += 1
  end

  puts "You have #{product_number} products, now we need the molarity"

  counter = 1
  while counter <= product_number
      puts "What is the molarity of product #{counter}?"
      p_input = Float(gets.chomp) rescue nil
      while reactant_number == nil
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
      product_array << p_input
      counter += 1
  end

  reactant_total = reactant_array.inject(:*)
  product_total = product_array.inject(:*)

  k = (product_total/reactant_total)
  keq = k.round(4)

  puts "Equilibrium constant K is #{keq}"
end