# first we print the list of students


students = ["Andy Newman", 
            "Keiran Goodacre",
            "Bebbs",
            "Marcin Wal",
            "Emily Sas",
            "Marcus de Wilde",
            "Matteo Manzo"
]

def print_header
  puts "Some students in my cohort at Makers Academy"
  puts "---------------"
end

def print(names)
  names.each do |name|
    puts name
  end
end

def print_footer(names)
  puts "Overall we have: #{names.length} great students."
end

print_header
print(students)
print_footer(students)

