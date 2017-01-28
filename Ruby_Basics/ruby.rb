# * Create a function that takes a string as an argument and adds the phrase "Only in America!" to the end of it

def my_function(n)
  n + "Only in America!"
end
puts  my_function("Trump as President. ")



# * Create a function to find the maximum value in an array of numbers. For instance:
#     `[100,10,-1000]`
#     should return 100. **Do not use Ruby's built-in `.max` function.**

numArray = [100, 10, 200, -1000]

def max_value(myArray)
  max = 0; 
  myArray.each do |number|
    if number > max
      max = number 
    end
  end

  return max 

end

p result = max_value(numArray);




# * Create a function that takes two arguments - both of them arrays. Inside of the function, 
# combine the arrays using the items from the first array as keys and the second array as values. 
# For example, when these two arrays are supplied as arguments:


def two_arguments(keys, values)
  dictionary = {}

  for i in 0..keys.length - 1
    dictionary[keys[i]] = values[i]
  end

  return dictionary
end

two_arguments( [:hyundai, :ford], ["Accent", "Focus"])

# * Create a function that prints the numbers from 1 to 100, except:
  
#     * For multiples of three print "Fizz" instead of the number
#     * For multiples of five print "Buzz"
#     * Print "FizzBuzz" for numbers that are multiples of both 3 and 5.

def fizz_buzz()
  
  for i in 0..100

    if i % 5 == 0 && i % 3 == 0 
      puts "FizzBuzz"

    elsif i % 3 == 0 
      puts "Fizz" 
    elsif i % 5 == 0 
      puts "Buzz" 

    else 
      puts i 
    end
  end
end
fizz_buzz()


