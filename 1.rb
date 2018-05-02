class Music
	def music_app
		@v="v"
		@g="g"
		@d="d"
		@s="s"
	end
end
class Instruments < Music
	def music_inst
		music_app
		puts "#{@v}#{@g}#{@d}#{@s}"
		puts "#{@v}#{@g}#{@d}"
		puts "#{@v}#{@g}"
		puts "#{@v	}"
	end
end
i=Instruments.new
i.music_inst


