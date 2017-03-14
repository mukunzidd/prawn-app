class StudentPdf < Prawn::Document
	def initialize(student)
		super(top_margin: 50)
		canvas do
			fill_circle [bounds.left, bounds.top], 30
			fill_circle [bounds.right, bounds.top], 30
			fill_circle [bounds.right, bounds.bottom], 30
			fill_circle [0, 0], 30

			@student = student
			student_info
			contact
			image open(@student.photo_url), :width => 100 
			profile
			experience
			social
		end
	end

	def student_info
		text "#{@student.first_name} #{@student.last_name}", size: 30, style: :bold, align: :center
	end

	def contact
		text "Email: #{@student.email}", size: 20, style: :italic, align: :center
		text "Tel: #{@student.phone_number}", size: 16, style: :italic, align: :center		
	end

	def profile
		move_down 30
		fill_color "00bbdd"
		font_size(18) do
			text "PROFILE", style: :bold
		end
		stroke do
			horizontal_line 0, 550
		end
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