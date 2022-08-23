print("File name: ")
file_name = gets.chomp()
file_data = File.read(file_name)
file_name = file_name.split(".")
file_name_length = (file_name.length - 1)
file_count = 0
file_namean = ""
while file_count != file_name_length
  file_namean = (file_namean + file_name[file_count] + ".")
  file_count += 1
end

file_end_name = file_name[-1]
file_name = (file_namean + "-copy." + file_end_name)
File.open(file_name, "w+") do |file|
  file.write("#Copy \n")
  file.write("#{file_data}")
end
