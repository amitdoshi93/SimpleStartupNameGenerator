def startup
	puts "Enter the number of letters you want in your startup name:"
	n_letters = gets.chomp.to_i
end
n_letters = startup
unless n_letters>1
	puts "The number should be more than 1!"
	n_letters = startup
end

puts "Now enter positions where you want your vowels starting from 1"
vowels = gets.chomp().split(",")
vowels_list = %w{a e i o u}
alphabets = ('a'..'z').to_a
alphabets = alphabets - vowels_list
begin
	arr=[]

	vowels.each do |x|
		x=x.to_i-1
		arr[x]=vowels_list.sample
	end
	i = 1
	loop do
	    if not vowels.include? i.to_s
		  arr[i-1]=alphabets.sample.to_s
		end
		if i == n_letters
		  break
		end
		i+=1
	end
	puts arr.join
	puts "Are you happy? (yes|y|no|n)"
	ans = gets.chomp
	ans = (ans=="yes"||ans=="y") ? false : true
end while ans





