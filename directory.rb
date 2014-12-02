# first we print the list of students


students = [{:name=>"Andy Newman", :cohort=>:december}, 
            {:name=>"Keiran Goodacre", :cohort=>:december}, 
            {:name=>"Bebbs", :cohort=>:december}, 
            {:name=>"Marcin Wal", :cohort=>:december}, 
            {:name=>"Emily Sas", :cohort=>:december}, 
            {:name=>"Marcus de Wilde", :cohort=>:december}, 
            {:name=>"Matteo Manzo", :cohort=>:december}
]

def print_header
  puts "Some students in my cohort at Makers Academy"
  puts "---------------"
end

def print(students)
  students.each do |student|
    puts "#{student[:name]}, (#{student[:cohort].capitalize}) cohort"
  end
end

def print_footer(names)
  puts "Overall we have: #{names.length} great students."
end

print_header
print(students)
print_footer(students)

