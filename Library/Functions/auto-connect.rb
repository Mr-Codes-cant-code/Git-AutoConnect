require 'fileutils'
require "io/console"

puts("Enter Remote Origin Link")
print(">>> ")
remote_origin = gets.strip()
remote_origin_code = ('git remote add origin ' + remote_origin)

remote_origin_name = remote_origin[19.. -5]
remote_origin_name = remote_origin_name.split("/")
remote_origin_name = remote_origin_name[1]
if remote_origin_name[-1] == "-"
  remote_origin_name = remote_origin_name[0.. -2]
end
if remote_origin_name[0] == "-"
  remote_origin_name = remote_origin_name[1.. -1]
end
remote_origin_name = remote_origin_name.capitalize()

File.open("Library/Bin/repo-name.txt", "w+") do |file|
  file.write(remote_origin_name)
end

time = Time.new
year =  time.year
month = time.month
date = time.day

File.open("README.md", "w+") do |file|
  file.write("# #{remote_origin_name} \n")
  file.write(" + Created On:  \n")
  file.write("``` \n")
  file.write("#{date}/#{month}/#{year} \n")
  file.write("``` \n")
  file.write(" \n")
  file.write("# Current Version \n")
  file.write("``` \n")
  file.write("0.0.0 \n")
  file.write("``` \n")
  file.write("[comment]: <> (Add More!) \n")
end

FileUtils.mkdir_p("Library")

File.open("index.rb", "w+") do |file|
  file.write("# Main code here >>")
end

directory = File.dirname(File.expand_path("Terminal.rb"))
directory_path = ("#{directory}/.git")
  FileUtils.remove_dir(directory_path) if File.directory?(directory_path)

puts system('git init')
puts system('git add README.md')
puts system('git add .')
puts system('git commit -m "initial commit"')
puts system('git branch -M main')
puts system(remote_origin_code)
puts system('git push -u origin main')


directory = File.dirname(File.expand_path("Terminal.rb"))
directory = ("#{directory}/Terminal.rb")

File.open(directory, "r+") do |file|
  file.write("connection = true")
end
