require 'zip'

project_name = File.read("Library/Words/repo-name.txt")
project_name = (project_name.strip + ".zip")

all_glob = Dir.glob("*")
all_glob_length = all_glob.length
cconstant = 0

Zip::File.open(project_name, create: true) {
 |zipfile|
  while cconstant != all_glob_length
    if Dir.exist?all_glob[cconstant]
      zipfile.mkdir(all_glob[cconstant])
      all_glob_dir = Dir.entries all_glob[cconstant]
    else
      file_data = File.read(all_glob[cconstant])
      zipfile.get_output_stream(all_glob[cconstant]) { |f| f.puts file_data }
    end
    cconstant += 1
  end
}
