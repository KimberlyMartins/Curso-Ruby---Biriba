puts ARGV
puts "                    "


File.open("teste.txt", "r") do |arq|
	while line = arq.gets
		puts line
	end
end

=begin    Lê o arquivo text.txt que está na mesma pasta
Kimberly - ruby
rails
ruby
teste
=end