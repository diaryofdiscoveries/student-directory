# 8.6
@width = 50

# 8.7
@students = []

# 8.5
def create_new_student
  puts "Do you want to create a new student? (y/n)".center(@width)
  continue = gets.chomp.downcase
  if continue == "y"
    return true
  elsif continue == "n"
    return false
  else
    puts "Invalid choice - please enter y or n".center(@width)
  end
  create_new_student
end

def input_students
  continue = create_new_student
  while continue
    puts "Please enter the name of the student".center(@width)
    name = gets.chomp
    puts "Please enter the cohort".center(@width)
    cohort = gets.chomp
    puts "Please enter the country of birth".center(@width)
    country_of_birth = gets.chomp
    hobbies = add_hobbies
    @students << { name: name, cohort: cohort.to_sym, country_of_birth: country_of_birth, hobbies: hobbies }
    puts "Now we have #{@students.count} students".center(@width)
    continue = create_new_student
  end
  @students
end

def add_hobbies
  hobbies = []
  puts "Please enter student's hobbies".center(@width)
  puts "(To finish, just hit return twice)".center(@width)
  hobby = gets.chomp
  while !hobby.empty?
    hobbies << hobby
    hobby = gets.chomp
  end
  hobbies
end

def print_header
  if !@students.empty?
    puts "The students of Villains Academy".center(@width)
    puts "-------------".center(@width)
  else
  end
end

# 8.12 
def print(students)
  if students.empty?
    puts "No students available".center(@width)
  else
    i = 0
    while i < @students.count
      puts "#{i + 1}. #{@students[i][:name]}, #{@students[i][:country_of_birth]} (#{@students[i][:cohort]})".center(@width)
      i += 1
    end
  end
end

# 8.2
def print_by_first_letter(students)
  if @students.empty?
    puts "No students available".center(@width)
  else
    puts "Student names beginning with: (Please enter a letter)".center(@width)
    letter = gets.strip
    number_of_matches = 0
    @students.each do |student|
      if student[:name].start_with?(letter.upcase, letter.downcase)
        puts "#{student[:name]}, #{student[:country_of_birth]} (#{student[:cohort]} cohort)".center(@width)
        number_of_matches += 1
      else
      end  
    end
    puts
    puts "We have #{number_of_matches} students whose name begins with #{letter}".center(@width)
    puts
  end
end

# 8.3
def print_by_name_length(students)
  if @students.empty?
    puts "No students available".center(@width)
  else
    puts "Names with maximum characters of: (Please enter a number)".center(@width)
    max_length = gets.strip
    number_of_matches = 0
    @students.each do |student|
      if student[:name].length <= max_length.to_i
        puts "#{student[:name]}, #{student[:country_of_birth]} (#{student[:cohort]} cohort)".center(@width)
        number_of_matches += 1
      else
      end  
    end
    puts
    puts "We have #{number_of_matches} students with a name of maximum #{max_length} characters".center(@width)
    puts
  end
end


def print_footer(students)
  if !@students.empty?
    puts "Overall, we have #{@students.count} great students".center(@width)
  else
  end
end

#call the methods
@students = input_students
print_header 
print(@students) 
print_footer(@students)
