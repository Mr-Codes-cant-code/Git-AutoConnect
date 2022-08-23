require 'zip'

project_name = "yo "#File.read("Library/Words/repo-name.txt")
project_name = project_name.strip

puts Dir.glob("*")

Zip::File.open("project_name.zip", create: true) {
 |zipfile|
  zipfile.get_output_stream("first.txt") { |f| f.puts "Hello from ZipFile" }
  zipfile.mkdir("a_dir")
}
