# need to refactor methods as they are becoming bloated 

def header
  "Some students in my cohort at Makers Academy".center(60) + "\n#{"-" * 60}\n"
end

def display(students)
  count = students.length 

  until count == 0
    student = students[count - 1]

    if student[:name].downcase.start_with?("a") && (student[:name].delete(' ').length. < 12)
      print "#{student[:name]}, (#{student[:cohort].capitalize}) cohort."
      print "\n#{student[:name]} likes #{student[:hobbies]}"
      print "\n#{student[:name]} was born in #{student[:birthplace]}"
      print "\n#{student[:name]} is #{student[:height]} tall"
    else
      print "No students start with letter A and are less than 12 characters long."
    end

    count -= 1
  end
end


def footer(students)
  "\nOverall we have: #{students.length} great student(s).\n"
end

def input_students
  print "Please enter the names of the student(s).\n".center(60)
  print "To finish, just hit return twice.\n".center(30)
  # create an empty array 
  students = []
  # get the first name
  prompt = "> "
  print prompt
  name = gets.chomp
  while !name.empty? do 
    # get cohort
    print "What cohort does #{name} belong to?"
    print "\n> "
    cohort = gets.chomp.to_sym
    cohort.length == 0 ? cohort = :December : cohort # check 
    # get hobbies
    print "What hobbies does #{name} have?"
    print "\n> "  
    hobbies = gets.delete("\n").delete("\r")
    hobbies.length == 0 ? hobbies = :"I'm boring" : hobbies
    # get country of birth
    print "Where was #{name} born?"
    print "\n> "
    birthplace = gets.chomp
    birthplace.length == 0 ? birthplace = :"Someplace" : birthplace
    # get height
    print " How tall is #{name}?"
    print "\n> "
    height = gets.chomp
    birthplace.length == 0 ? height = :"Someheight" : height
    
    check_correct_inputs(name,cohort,hobbies,birthplace,height)

    #add the student to the hash 
    students << {:name => @name,
                 :cohort => @cohort.to_sym,  
                 :hobbies => @hobbies, 
                 :birthplace => @birthplace,
                 :height => @height
    }

    plural_check = students.length == 1 ? "student" : "students"

    print "Now we have #{students.length} #{plural_check}."
    # get another name from the user 
    print "\nAdd another student? Alternatively, press enter to exit.\nName: "
    name = gets.chomp
  end 
  # return the array of students
  students
end

def check_correct_inputs(name,cohort,hobbies,birthplace,height)

  @name = name
  @cohort = cohort 
  @hobbies = hobbies
  @birthplace = birthplace 
  @height = height 
  
  puts "Name: #{name}, Cohort: #{cohort}, Hobbies: #{hobbies}, Birthplace: #{birthplace}, Height: #{height}."
  
  puts "Everything correct? Type 'exit' if so or type 'name', 'cohort', 'hobbies', 'birthplace' or 'height' to 'change'."
  
  check = gets.chomp 

  until check == "exit"
    case check.downcase
      when "name" 
        print "Name: "
        @name = gets.chomp
        print "Anything else you would like change? "
        check = gets.chomp 
      when "cohort"
        print "Cohort: " 
        @cohort = gets.chomp
        print "Anything else you would like change? "
        check = gets.chomp 
      when "hobbies"
        print "Hobbies: " 
        @hobbies = gets.chomp
        print "Anything else you would like change? "
        check = gets.chomp
      when "birthplace"
        print "Birthplace: " 
        @birthplace = gets.chomp
        print "Anything else you would like change? "
        check = gets.chomp
      when "height"
        print "Height: " 
        @height = gets.chomp
        print "Anything else you would like change? "
        check = gets.chomp
      else
        print "Sorry, I don't understand: "
        check = gets.chomp
      end
  end
  return @name, @cohort, @hobbies, @birthplace, @height
end





 

print header
students = input_students
display(students)
print footer(students)


