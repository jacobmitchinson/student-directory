

def header
  "Some students in my cohort at Makers Academy" + "\n---------------"
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
  print "\nPlease enter the names of the student(s)."
  print "\nTo finish, just hit return twice.\n"
  # create an empty array 
  students = []
  # get the first name
  name = gets.chomp
  while !name.empty? do 
    # get hobbies
    print "\nWhat hobbies does #{name} have?\n"
    hobbies = gets.chomp
    # get country of birth
    print "\nWhere was #{name} born?\n"
    birthplace = gets.chomp
    # get height
    print "\nHow tall is #{name}?\n"
    height = gets.chomp

    #add the student to the hash 
    students << {:name => name, 
                 :cohort => :decemeber, 
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


