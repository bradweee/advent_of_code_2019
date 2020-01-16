#Name the file for our input from Advent
PUZZLEINPUT='input.txt'

#Create the method to read the file
def read_file
  #Using File method this reads the lines from the input file, then
  #removes the extra characters w/ strip (like spaces) and converts the line to an integer
  File.readlines(PUZZLEINPUT).map(&:strip).map(&:to_i)
end

#Creates the method to change the mass
def mass(number)
  #formula for calculating using the required caluclations from assignment
  mass = (number/3).to_i - 2
end

#The final method that puts the above together
def lets_go
  #lines is what we're naming the read file using read_file method created above
  lines = read_file
  #establishing the current total
  total = 0
  #Using the new lines array, having the total add each array item's mass method
  lines.each do |line|
    total += mass(line)
  end
  #puts the total now that we have added all the mass
  puts total
end

#runs the let_go method!
lets_go
