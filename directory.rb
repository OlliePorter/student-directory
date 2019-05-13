def input_students
  puts "Please enter the names of the students"
  puts "To finish, just hit return twice"
  students = []
  name = gets.chomp
  while !name.empty? do
    puts "Please enter the date of birth for that student"
    date_of_birth = gets.chomp
    puts "Please enter their cohort"
    cohort = gets.chomp
    if cohort.empty? == true
      cohort = :not_given
    end
    students << {name: name, date_of_birth: date_of_birth, cohort: cohort}
    if students.length < 2
      puts "Now we have #{students.count} student"
      puts "Please provide another student name"
    else
      puts "Now we have #{students.count} students"
      puts "Please provide another student name"
    end
    name = gets.chomp
  end
  students
end

def print(students)
  puts "Please enter the cohort you'd like to filter by e.g. 'May 2019'"
  cohort_filter = gets.chomp
  puts "The students of Villains Academy".center(500)
  puts "------------".center(500)
  filtered_students = students.select { |item| item[:cohort] == cohort_filter}
  filtered_students.each_with_index do |student, index|
    puts "Name: #{student[:name]} - DOB: #{student[:date_of_birth]} - Cohort: #{student[:cohort]}".center(500)
  end
end

def print_footer(names)
  puts "Overall, we have #{names.count} great students".center(500)
end

students = input_students
if students.length >= 1
  print(students)
  print_footer(students)
end
