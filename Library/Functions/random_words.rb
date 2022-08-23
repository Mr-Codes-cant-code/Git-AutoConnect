print("Amount of words: ")
am_w = gets.chomp()
am_w = am_w.to_i
words_data = File.read("Library/Words/words_alpha.txt")
word = words_data.split(" ")
words = ""
amw_c = 0
words_length = word.length
while amw_c != am_w
  amw_c += 1
  word_no = rand(1.. words_length).to_i
  words = (words + "#{amw_c}. " + word[word_no] + "\n")
end

File.open("random-words.txt", "w+") do |file|
  file.write(words)
end
