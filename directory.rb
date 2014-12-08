# when adding students completely overwrites file and removes students. this needs to be fixed. 


@students = []

def print_header
  puts "The students of my cohort at Makers Academy"
  puts "-------------"
end

def print_students_list
  @students.each do |student|
    puts "#{student[:name]} (#{student[:cohort]} cohort)"
  end
end

def print_footer    
  puts "Overall, we have #{@students.length} great students"
end

def input_students
  puts "Please enter the names of the students"
  puts "To finish, just hit return twice"
  @students = []
  # get the first name
  @name = STDIN.gets.chomp
  # while the name is not empty, repeat this code
  loop_and_add
end

def loop_and_add
  while !@name.empty? do    
    # add the student hash to the array
    add_student_to_array
    puts "Now we have #{@students.length} students"
    # get another name from the user
    @name = STDIN.gets.chomp
  end
end

def add_student_to_array
  @students << {:name => @name, :cohort => :november}   
end

def print_menu
  puts "1. Input the students"
  puts "2. Show the students"
  puts "3. Save the students to a csv file"
  puts "4. Load the students from a csv file"
  puts "9. Exit"
end

def show_students
  print_header
  print_students_list
  print_footer
end


def save_students
  # open the file for writing
  file = File.open("students.csv", "w")
  # iterate over the array of students 
  @students.each do |student| 
    student_date = [student[:name], student[:cohort]]
    csv_line = student_date.join(',')
    file.puts csv_line
  end
  file.close
end

def try_load_students
  filename = ARGV.first
  return if filename.nil?
  if File.exists?(filename)
    load_students(filename)
    puts "Loaded #{@students.length} from #{filename}"
  else
    puts "Sorry, #{filename} doesn't exist."
    exit
  end
end

def load_students(filename = "students.csv")
  file = File.open(filename, 'r')
  file.readlines.each do |line|
  name, cohort = line.chomp.split(',')
    @students << {:name => name, :cohort => cohort.to_sym}
  end
  file.close
end

def process(selection)
  case selection
    when "1"
      students = input_students
    when "2"
      show_students
    when "3"
      save_students
    when "4"
      load_students 
    when "9"
      exit 
    else
      puts "I don't know what you meant, try again."
  end
end

def interative_menu
  @students = []
  loop do 
    print_menu
    process(STDIN.gets.chomp)
  end
end

interative_menu



