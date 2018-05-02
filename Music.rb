class Music
	def music_app1
		"v"
	end
	def music_app2
		"g"
	end
	def music_app3
		"s"	
	end
	def music_app4
		"t"
	end
end
class Instruments < Music
	def music_inst
		puts "#{music_app1}#{music_app2}#{music_app3}#{music_app4}"
		puts "#{music_app1}#{music_app2}#{music_app3}"
		puts "#{music_app1}#{music_app2}"
		puts "#{music_app1}"
	end
end
	i=Instruments.new
	p i.music_inst

