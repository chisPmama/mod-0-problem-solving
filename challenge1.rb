# Problem-Solving

### Setup
- Fork this repository
- Clone your copy of it to your local machine
- Open the repo in VS Code

### Directions
Solve at least 3 of the challenges below. Create a file using the language for your program (`challenge1.rb` or `challenge1.js`) for each of the challenges you select. For each challenge you complete, include comments showing the **overall goal** in your own words, your **pseudocode**, and your **final solution**. 

1. Given an array of strings, print only the strings that have exactly 4 characters.

# Overall goal: Return/print the strings contained in the given array that have exactly 4 characters
# Psuedo code: Use "each" method to locate strings of length of exactly 4 and print value
names = ["Justin","Joseph","Martin","Kev","Anth","Eric"]
names.each do |name|
  if name.length == 4
    p name
  end
end

1. Start with an array of strings with a mix of uppercase and lowercase letters. Print every word in all lowercase letters.

# Overall goal: Return the each word in the array as only lowercase letters
# Psuedo code: Use each method to execute the downcase method and return value
names = ["JusTIn","JosePh","MarTIn","Kev","ANTH","Eric"]

names.each do |name|
  p name.downcase
end

1. Write a method or function that removes all instances of the letter <strong>s</strong> in a string. The method or function should accept a string as an argument and return the same string with every instance of the letter <strong>s</strong> removed.

# Overall goal: Return string without character "s"
# Psuedo code: Use def to create method that will remove the "s" character using .delete
word = "sassy"

def remove_s(string)
  p string.delete("s")
end

remove_s(word)

1. Start with an array of hobbies. Print out only the words that end in "ing".

# Overall goal: Return only values of "ing" from a string array
# Psuedo code: Use each method to perform .end_with? to locate words ending in "ing" and print value

hobbies = ["climbing", "camping", "walking", "birds", "discgolf","movies"]

hobbies.each do |hob|
  if hob.end_with?("ing")
    p hob
  end
end

1. Start with an array of travel destinations. Print every travel destination in alphabetical order embedded in a sentence using string interpolation. For example, if the destination is "New York City", print something like "The next place I want to visit is New York City!" 

# Overall goal: Return an individual string per each travel location while also returning in alphabetical order of location
# Psuedo code: Sort out the array using .sort then use each method to print out new interpolated string

destinations = ["Mars", "Miami", "Jupiter", "Spain", "Brazil", "Candyland"]
destinations_alph = destinations.sort

destinations_alph.each do |location|
    p "The next place I want to visit is #{location}!"
end


1. Given a sentence with only lowercase letters, print the same sentence with the first letter of every word capitalized. For example, if you were given "Turing is the best", return "Turing Is The Best" instead!
# Overall goal: Return an original string with each word capitalized
# Psuedo code: Break down the string to individual objects contained in a string array and then use each method to capitalize each word then join the words and return value

sentence = "my chef is a little crazy but he reminds me of my baba"

def capitalize(string)
  string_2_array = string.split
  string_2_array.each do|word|
      word.capitalize!
    end
  string_2_array.join(" ")
end

p capitalize(sentence)

1. Write a method or function that determines how much a person will 
[pay in taxes in the United States]
(https://www.irs.gov/newsroom/irs-provides-tax-inflation-adjustments-for-tax-year-2022) based on their annual income. 
The method or function should accept a number representing the individual's annual 
income as an argument and return the amount they will owe in taxes for that year.

# Overall goal: Return value in taxes from argument of inputted income
# Psuedo code: Through an elaborate if/elsif/else logic, a new method can be created to take the income value and print the value that is adjusted (the taxes)

def pay_taxes(income)
    if income >= 215950
        taxes = 0.35 * income
        p taxes
    elsif 215950 < income && income >= 170050
        taxes = 0.32 * income
        p taxes
    elsif 170050 < income && income >= 89075
        taxes = 0.24 * income
         p taxes
    elsif 89075 < income && income >= 41775
        taxes = 0.22 * income
         p taxes
    elsif 41775 < income && income >= 10275
        taxes = 0.12 * income
         p taxes
    else
        taxes = 0.10 * income
         p taxes
    end
end

  income1 = 120000
  pay_taxes(income1)
  income2 = 5000
  pay_taxes(income2)