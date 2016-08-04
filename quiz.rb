def build_questions
  strands = {}
  standards = {}
  save_strands = nil
  File.open("questions.csv").each do |line|
    if line[0] != 's'
      line = line.split(",")
      if [line[0]] != save_strands
        strands[line[0]] = line[1]
        standards = {}
      end
      standards[line[0]][line[2]] = line[5]
    end
  end
  puts strands
  puts standards
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




