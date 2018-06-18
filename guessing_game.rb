# When I start the program, it prints "I have generated a random number for you to guess, what is your guess?"
# A random number is generated, set to the variable "secret_number"
#The problem is solved when the user inputs the same number that the computer has generated
#We want to use software from the command line
#Ask user to input either a number, letter, or word.
#run comparisons of the input to certain conditions to met that will kick off the next phase of the program
#aka flow control
# For example, If input.to_i > secret_number, then, puts "Go lower!"
#If input.to_i is < secret_number, puts "Go higher!"
# game finally ends when input == secret_number, or when the user opts to cheat and the program ends.


#This line generates a secret number from 1-100
secret_number = rand(1..100)
#prints this line on the screen
puts "I have generated a random number for you to guess, what is your guess? If you wish to cheat, enter (c) or (c)heat. You will, however, forfit your chance of guessing."
#creates a condition to be satisfied to kick off a loop
while 1 == 1 do
#makes an input box
 number_guess = gets.chomp
 #begins if/then statements to be compared inside the loop. If the input is equal to c or cheat,
 #put the secret number and "you forfeited"
 if number_guess == "c" || number_guess == "cheat"
   puts "#{secret_number}, you forfeited!"
   #break end the program
   break
   #end closes the if statment. every if statement needs an end
 end
 #another set of conditionals to be fulfilled if the first conditional returned false
 #if the input is "hint"
 if number_guess == "hint"
   #put a string containing a statment plust a math equation involving the secret number that
   #the user can use to figure out the number
   puts "The secret number times two is #{secret_number * 2}"
   #this command pops you back up to line 16 and starts the loop over again
   next
   #this is then end statement for my previous if, on line 29
 end
 #this convererts the input to a integer, PROVIDED the input was NOT "c", "cheat", or "hint".
 number_guess = number_guess.to_i
 #this compares the input to the secret number. is it bigger?
  if number_guess > secret_number
    #prints out the number you guessed and a hint
    puts "You guessed #{number_guess}.  It is too big. Try again."
    #this command pops you back up to line 16 and starts the loop over again
    next
    #this says elseif the number guess is less than the secret number
  elsif number_guess < secret_number
    #print the number user guessed and "it is too small..."
    puts "You guessed #{number_guess}. It is too small. Try again."
    #see line 45
    next
    #this says elsif the number is the secret number
  elsif number_guess == secret_number
    #print "you guessed the right number!"
    puts "You guessed the right number!"
    #break ends and exits the program
    break
    #ends if statment
  end
  #ends elseif on line 46
end
