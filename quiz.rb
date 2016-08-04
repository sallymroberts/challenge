def build_usage
  File.open("usage.csv").each do |line|
    students = {}
    # if line[0] != 's'
    #   line = line.split(",")
    #   question = line
    #   students[line[0]] = {[line[1]]: [line[3], line[4]]}
    # end
  end
end

def build_questions
  strands = {}
  standards = {}
  save_strands = nil
  File.open("questions.csv").each do |line|
  #   if line[0] != 's'
  #     line = line.split(",")
  #     if [line[0]] != save_strands
  #       strands[line[0]] = line[1]
  #       standards = {}
  #     end
  #     standards[line[0]][line[2]] = line[5]
  #   end
  end
  # puts strands
  # puts standards
end

# return list of question ids
def get_questions(student_id)
  "list of questions"
end

# After build_usage and build_questions are working, uncomment these lines:
#   build_usage
#   build_questions

bad_id = true
while bad_id
  print "Please enter your student ID (must be a positive number): "
  student = gets.chomp
  student_id = student.to_i unless student.match(/[^[:digit:]]+/)
  if student_id.is_a?(Integer)
    bad_id = false
  end
  # Add test here that this is a valid student ID based on usage.csv data
end

bad_num = true
while bad_num
  print "Please enter the number of questions for the quiz (must be a positive number): "
  num = gets.chomp
  num_int = num.to_i unless num.match(/[^[:digit:]]+/)
  if num_int.is_a?(Integer)
  bad_num = false
  end
end

questions = get_questions(student_id)
print questions








