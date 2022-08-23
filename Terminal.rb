connection = false
puts(">>>   Auto-GitProcess   <<<")
if connection == false
  require_relative "Library/Functions/auto-connect.rb"
  puts("Connected Succesfully!")
end
x = 1

while x != 0
  print("$ ")
  input = gets.chomp()

  case input
  when "file.copy"
    require_relative "Library/Functions/copy.rb"
  when "rep.push"
    require_relative "Library/Functions/push.rb"
  when "rand.words"
    require_relative "Library/Functions/random_words.rb"
  end
end
