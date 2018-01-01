# Deli Queue # At the beginning of the day, the deli is empty so the queue should be represented by an empty array
katz_deli = []

# line method ******************************************************************************
# shows everyone their current place in the line.
#   If there is nobody in line, it should say "The line is currently empty."
# accecpt one argument
#   katz_queue : which an array which holds customers
def line(katz_queue=katz_deli)
  output = "The line is currently"            #this string can be used with both possibilities of "if"
  if katz_queue.length == 0
    output += " empty."
  else
    output += ":"
    for i in 0..katz_queue.length-1 do
      output += " #{i+1}. #{katz_queue[i]}"
    end #for
  end #if
  puts output
end #line

# take_a_number method *********************************************************************
# accept two arguments,
#   the array for the current line of people (katz_deli),
#   and a string containing the name of the person wishing to join the line.
# return
#   the person's name along with their position in line.
# method that a new customer will use when entering the deli.

# now_serving method ***********************************************************************
# should call out (i.e. puts) the next person in line and then remove them from the front.
# If there is nobody in line, it should call out (puts) that "There is nobody waiting to be served!".
