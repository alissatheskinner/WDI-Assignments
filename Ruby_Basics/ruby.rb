# * Create a function that takes a string as an argument and adds the phrase "Only in America!" to the end of it

def my_function(n)
  n + "#{'Only in America!'}"
end
puts  my_function("Trump as President. ")



# * Create a function to find the maximum value in an array of numbers. For instance:
#     `[100,10,-1000]`
#     should return 100. **Do not use Ruby's built-in `.max` function.**

numArray = [100, 10, -1000]

def max_value(numArray)
  numArray.each do |number|
end

max_value.numArray[0]

end




# * Create a function that takes two arguments - both of them arrays. Inside of the function, 
# combine the arrays using the items from the first array as keys and the second array as values. 
# For example, when these two arrays are supplied as arguments:


def two_arguments(make,model)
  make = [:hyundai, :ford]
  model = ["Accent", "Focus"]

return "#{:make[0] + :model[0]}"
return "#{:make[1] + :model[1]}"
end

# * Create a function that prints the numbers from 1 to 100, except:
  
#     * For multiples of three print "Fizz" instead of the number
#     * For multiples of five print "Buzz"
#     * Print "FizzBuzz" for numbers that are multiples of both 3 and 5.

def fizz_buzz()
  
  for i in 0..100
    puts i
  end 
  
  if i % 3 == 0 
    puts "Fizz" 
  end
      
  elsif i % 5 == 0 
    puts "Buzz" 
  end
    
  elsif i % 5 == 0 && i % 3 == 0 
   puts "FizzBuzz"
  end
  
end



