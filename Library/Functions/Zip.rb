require "FileUtils"
pw_d = Dir.pwd 
pw_d1 = pw_d.split("/")
pw_d2 = pw_d1[-1]
pw_dw = ("#{pw_d}/#{pw_d2}.zip")
FileUtils.copy_entry pw_d, pw_dw
