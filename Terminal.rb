connection =false
puts(">>>   Auto-GitProcess   <<<")
if connection == false
  require_relative "Library/Functions/auto-connect.rb"

  #change_fold_name
  fold_pwd = Dir.pwd
  fold_pwd = fold_pwd.split("/")
  curr_fold = fold_pwd[-1]
  if curr_fold == "Auto-GitConnect"
    require 'fileutils'
    auto_gitprocess = Dir.pwd
    new_file = File.read("Library/Words/repo-name.txt")
    new_file = new_file.strip()
    FileUtils.mv auto_gitprocess, new_file
  end

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
  when "exit"
    require_relative "Library/Functions/exit.rb"
  end
end
