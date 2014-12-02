

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
    cohort = gets.chomp
    cohort.length == 0 ? cohort = "December" : cohort
    # get hobbies
    print "What hobbies does #{name} have?"
    print "\n> "  
    hobbies = gets.chomp
    hobbies.length == 0 ? hobbies = "I'm boring" : hobbies
    # get country of birth
    print "Where was #{name} born?"
    print "\n> "
    birthplace = gets.chomp
    birthplace.length == 0 ? birthplace = "Someplace" : birthplace
    # get height
    print "\nHow tall is #{name}?"
    print "\n> "
    height = gets.chomp
    birthplace.length == 0 ? birthplace = "Someplace" : birthplace
    #add the student to the hash 
    students << {:name => name, 
                 :cohort => cohort, 
                 :hobbies => hobbies, 
                 :birthplace => birthplace,
                 :height => height
    }
    print "Now we have #{students.length} students.\n"
    # get another name from the user 
    name = gets.chomp
  end 
  # return the array of students
  students
end

print header
students = input_students
display(students)
print footer(students)


