
def print_header
  puts "The students of my cohort at Makers Academy"
  puts "-------------"
end

def display
  students.each do |student|
    puts "#{student[:name]} (#{student[:cohort]} cohort)"
  end
end

def print_footer    
  puts "Overall, we have #{students.length} great students"
end

def input_students
  puts "Please enter the names of the students"
  puts "To finish, just hit return twice"
  # get the first name
  name = gets.chomp
  # while the name is not empty, repeat this code
  while !name.empty? do    
    # add the student hash to the array
    @students << {:name => name, :cohort => :november}    
    puts "Now we have #{students.length} students"
    # get another name from the user
    name = gets.chomp
  end
end

def interative_menu
  # 1. print the menu and ask the user what to do 
  # 2. read the input and save it into a variable
  # 3. do what the user asked
  # 4. repeat from step 1 
end

print_header
students = input_students
display(students)
print footer(students)


