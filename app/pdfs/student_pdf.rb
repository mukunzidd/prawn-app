class StudentPdf < Prawn::Document
	def initialize(student)
		super(top_margin: 50)
		# canvas do
		# 	fill_circle [bounds.left, bounds.top], 30
		# 	fill_circle [bounds.right, bounds.top], 30
		# 	fill_circle [bounds.right, bounds.bottom], 30
		# 	fill_circle [0, 0], 30

			@student = student
			title
			student_info
			profile_title
			profile_content
			experience
			social
		# end
	end

	def title
		text "RESUME", style: :italic, align: :center, size: 30
		move_down 30
	end

	def student_info
		text "#{@student.first_name} #{@student.last_name}", size: 30, style: :bold
		text "Email: #{@student.email}", size: 20, style: :italic
		text "Tel: #{@student.phone_number}", size: 16, style: :italic

		image open(@student.photo_url), :width => 100, :at => [400, 650]
	end


	def profile_title
		move_down 30
		fill_color "00bbdd"
		font_color(18) do
			text "PROFILE", style: :bold
		end
		stroke do
			stroke_color "00bbdd"
			move_down 10
			horizontal_line 0, 550
			move_down 10
		end
	end
	
	def profile_content
		text "Date available to work: **/**/**", style: :bold
		text "I am affable and forward thinking with a passion for life and the people that live it. (CHANGE!)"
	end

	def experience
		# Bimwe bose		
	end

	def social
		# Bimwe bose		
	end

	def method_name
		
	end

end