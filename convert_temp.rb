def convert_temp(tempature,input_scale,output_scale)
    #celsius to kelvin
    #0°C + 273.15 = 273.15K
    if (input_scale == "celsius") && (output_scale == "kelvin")
        calc = tempature +  273.15
        puts "I caluculated!"
        puts "If #{tempature} celsius, it is #{calc} kelvin"
    #celsius to fahrenheit
    #(0°C × 9/5) + 32 = 32°F
    elsif (input_scale == "celsius") && (output_scale == "fahrenheit")
        calc = (tempature * 9.0 / 5.0) + 32.0 
        puts "I caluculated!"
        puts "If #{tempature} celsius, it is #{calc} fahrenheit"
    #celsius to celsius
    elsif (input_scale == "celsius") && (output_scale == "celsius")
        puts "You tried to calculate celsius to celsius!\nTry it again!"
        smenu()
    #fahrenheit to celsius
    #(32°F − 32) × 5/9 = 0°C
    elsif (input_scale == "fahrenheit") && (output_scale == "celsius")
        calc =  (tempature - 32.0) * 5.0 / 9.0 
        puts "I caluculated!"
        puts "If #{tempature} fahrenheit, it is #{calc} celsius"
    #fahrenheit to kelvin
    #(32°F − 32) × 5/9 + 273.15 = 273.15K
    elsif (input_scale == "fahrenheit") && (output_scale == "kelvin")
        calc =  (tempature - 32.0) * 5.0 / 9.0 + 273.15
        puts "I caluculated!"
        puts "If #{tempature} fahrenheit, it is around #{calc} celsius."
    #fahrenheit to fahrenheit
    elsif (input_scale == "fahrenheit") && (output_scale == "fahrenheit")
        puts "You tried to calculate fahrenheit to fahrenheit!\nTry it again!"
        smenu()
    #kelvin to celsius
    #0K − 273.15 = -273.1°C
    elsif (input_scale == "kelvin") && (output_scale == "celsius")
        calc =  tempature - 273.15
        puts "I caluculated!"
        puts "If #{tempature} kelvin, it is #{calc} celsius."
    #kelvin to fahrenheit
    #(0.5K − 273.15) × 9/5 + 32 = -458.8°F
    elsif (input_scale == "kelvin") && (output_scale == "fahrenheit")
        calc =  (tempature - 273.15) * 9.0 / 5.0 + 32.0
        puts "I caluculated!"
        puts "If #{tempature} kelvin, it is #{calc} fahrenheit."
    elsif (input_scale == "kelvin") && (output_scale == "kelvin")
        puts "You tried to calculate kelvin to kelvin!\nTry it again!"
        smenu()
    else
        puts "Please type correct name and number!"
    end
end
#this is for making sure that it is number or not.
def is_numeric?(obj) 
   obj.to_s.match(/\A[+-]?\d+?(\.\d+)?\Z/) == nil ? false : true
end

def smenu()
  puts "------------------------------------------"
  puts "Which scale you want to calculate from?\nType index number from  1)kelvin 2)fahrenheit 3)celsius"
  input_scale = gets.chomp
    case input_scale.to_i
    when 1
        input_scale = "kelvin"
    when 2
        input_scale = "fahrenheit"
    when 3
        input_scale = "celsius"
    else
        puts "Please type correct index number!"
        smenu()
    end
  puts "Put tempature of #{input_scale} you want to calculate"
  tempature = gets.chomp.to_f
    if is_numeric?(tempature)
        tempature
    else
      puts "Please type correct index number!"
      smenu()
    end
  puts "Which scale you want to calculate from #{input_scale} to?\nType name from 1)kelvin 2)fahrenheit 3)celsius"
  output_scale = gets.chomp
  case output_scale.to_i
  when 1
    output_scale = "kelvin"
  when 2
    output_scale = "fahrenheit"
  when 3
    output_scale = "celsius"
  else
      puts "Please type correct index number!"
      smenu()
  end
  convert_temp(tempature,input_scale,output_scale)
end
smenu()
