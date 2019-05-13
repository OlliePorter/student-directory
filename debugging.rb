@students = []

def input_students
  puts "Please enter the names of the students"
  puts "To finish, just hit return twice"
  # create an empty array
  # get the first name
  name = gets.chomp
  # while the name is not empty, repeat this code
  while !name.empty? == true do
  # add the student hash to the array
  students << {name: name, cohort: :november}
  puts "Now we have #{students.count} students"
  # get another name from the user
  name = gets.chomp
  end
  @students
  # return the array of students
end

def print_header
  puts "The students of my cohort at Makers Academy"
  puts "-------------"
end

def print
  @students.each do |student|
    puts "#{student[:name]} (#{student[:cohort]} cohort)"
  end
end

def print_footer(names)
  puts "Overall, we have #{names.count} great students"
end

def show_students
  print_header
  print(students)
  print_footer(students)
end

def print_menu
  puts "Here are your options:"
  puts "1. Input new students"
  puts "2. Show all students"
  puts "3. Exit the program"
end

def process(selection)
  case selection
  when "1"
    input_students
  when "2"
    show_students
  when "3"
    exit
  else
    puts "I don't know what you mean, try again"
  end
end





interactive_menu
