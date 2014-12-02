

def header
  "Some students in my cohort at Makers Academy" + "\n---------------"
end

def display(students)
  until students.empty? 
    student = students.pop
    
    if student[:name].downcase.start_with?("a") && (student[:name].delete(' ').length. < 12)
      print "#{student[:name]}, (#{student[:cohort].capitalize}) cohort"
    else
      print "No students start with letter A and are less than 12 characters long."
    end
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
    #add the student to the hash 
    students << {:name => name, :cohort => :decemeber}
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


