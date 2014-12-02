# first we print the list of students


students = [["Andy Newman", :december],
            ["Keiran Goodacre", :december],
            ["Bebbs", :december],
            ["Marcin Wal", :december],
            ["Emily Sas", :december],
            ["Marcus de Wilde", :december],
            ["Matteo Manzo", :december]
]

def print_header
  puts "Some students in my cohort at Makers Academy"
  puts "---------------"
end

def print(students)
  students.each do |student|
    puts "#{student[0]}, (#{student[1].capitalize}) cohort"
  end
end

def print_footer(names)
  puts "Overall we have: #{names.length} great students."
end

print_header
print(students)
print_footer(students)

