# Deli Queue # At the beginning of the day, the deli is empty so the queue should be represented by an empty array
katz_deli = []

# line method ******************************************************************************
# shows everyone their current place in the line.
#   If there is nobody in line, it should say "The line is currently empty."
# arguments : one
#   katz_deli : which an array which holds customers

def line(katz_deli=katz_deli)
  output = "The line is currently"            #this string can be used with both possibilities of "if"
  if katz_deli.length == 0
    output += " empty."
  else
    output += ":"
    for i in 0..katz_deli.length-1 do
      output += " #{i+1}. #{katz_deli[i]}"
    end #for
  end #if
  puts output
end #line

# take_a_number method *********************************************************************
# method that a new customer will use when entering the deli.
# arguments : two
#   the array for the current line of people (katz_deli),
#   and a string containing the name of the person wishing to join the line.
# puts with the person's name along with their position in line.


def take_a_number(katz_deli=katz_deli, name)
  katz_deli.push(name)
  puts "Welcome, #{name}. You are number #{katz_deli.length} in line."
end #take_a_number

# now_serving method ***********************************************************************
# should call out (i.e. puts) the next person in line and then remove them from the front.
# If there is nobody in line, it should call out (puts) that "There is nobody waiting to be served!".
# arguments : one
#   katz_deli : which an array which holds customers

def now_serving(katz_deli=katz_deli)
  if katz_deli.length == 0
    puts "There is nobody waiting to be served!"
  else
    puts "Currently serving #{katz_deli[0]}."
    katz_deli.shift
  end #if
end #now_serving
