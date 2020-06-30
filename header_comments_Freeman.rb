################################################################################
#
#  Name:        Timbre Freeman
#  Assignment:  Header Comment Output
#  Date:        09/22/2019
#  Class:       CIS 282
#  Description: Ask user for some information to make a header that the user may use
#
################################################################################


# Welcome screen
puts ""
puts "Welcome to Header Maker"
puts ""
# Getting input from user
print "Enter your Name: "
name = gets.chomp
puts ""
print "Enter your Assignment Name: "
assignment = gets.chomp
# Ask user if they would like to get today date
puts ""
puts "Enter y if you wont to use today date, enter any thing else to use your own date"
answer = gets.chomp
if (answer != "y")
  puts ""
  print "Enter the Month: "
  time_month = gets.chomp
  puts ""
  print "Enter the Day: "
  time_day = gets.chomp
  puts ""
  print "Enter the Year: "
  time_year = gets.chomp
else
  time_month = Time.now.strftime("%m")
  time_day = Time.now.strftime("%d")
  time_year = Time.now.strftime("%Y")
  puts ""
  print("Date use is ", time_month, "/",time_day,"/")
  puts time_year
end
puts ""
print "Enter the Class short name: "
class_name = gets.chomp
puts ""
print "Enter the Class Number: "
class_number = gets.chomp
puts ""
print "Enter the Description: "
$description = gets.chomp
# Print Header
def box_top_bottom
  # Check if the description is longer then box top/bottom
  if $description.length < (60-16)
    i_max = 59
  else
    i_max = ($description.length + 16)
  end
  # Print most of the "#"
  for i in 1..i_max do
    print "#"
  end
  # Print the lass "#" and end the line
  puts "#"
end
puts ""
box_top_bottom
puts "#"
print "#  Name:        "
puts name
print "#  Assignment:  "
puts assignment
print "#  Date:        ", time_month, "/", time_day, "/"
puts time_year
print "#  Class:       ", class_name, " "
puts class_number
print "#  Description: "
puts $description
puts "#"
box_top_bottom