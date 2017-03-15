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
			skills
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
		font_size(18) do
			text "PROFILE", style: :bold, color: "00bbdd"
		end
		stroke do
			stroke_color "00bbdd"
			move_down 10
			horizontal_line 0, 550
			move_down 10
		end
	end
	
	def profile_content
		move_down 10
		text "Date available to work: **/**/**", style: :bold, size: 16
		move_down 5
		text "I am affable and forward thinking with a passion for life and the people that live it. (CHANGE!)", size: 16
	end

	def experience
		move_down 30
		font_size(18) do
			text "EXPERIENCE", style: :bold, color: "00bbdd"
		end


		stroke do
			stroke_color "00bbdd"
			move_down 10
			horizontal_line 0, 550
			move_down 10
		end

		# Experience 1
		move_down 15
		font_size(18) do
			text "Experice 1 Position", style: :bold
		end

		move_down 10
		text "Company | City | Year", style: :italic, size: 15, color: "7d7d7d"
		move_down 15
		text "CookedLife is a web app for people who are interested in everyday recipes and meals. It is a platform for people to find new and interesting recipes as well as post.", size: 16

		# Experience 2
		move_down 15
		font_size(18) do
			text "Experice 2 Position", style: :bold
		end

		move_down 10
		text "Company | City | Year", style: :italic, size: 15, color: "7d7d7d"
		move_down 15
		text "CookedLife is a web app for people who are interested in everyday recipes and meals. It is a platform for people to find new and interesting recipes as well as post their own culinary creations.", size: 16
	end

	def social
		# Bimwe bose		
	end

	def skills
		move_down 30
		font_size(18) do
			text "SKILLS", style: :bold, color: "00bbdd"
		end


		stroke do
			stroke_color "00bbdd"
			move_down 10
			horizontal_line 0, 550
			move_down 10
		end

		# Skill 1
		move_down 15
		font_size(18) do
			text "HTML 5", style: :bold
		end

		move_down 10
		text "Talk about your skill", style: :italic, size: 15, color: "7d7d7d"
		move_down 15

		# Skill 1
		move_down 15
		font_size(18) do
			text "Javascript", style: :bold
		end

		move_down 10
		text "Talk about your JS skills", style: :italic, size: 15, color: "7d7d7d"
		move_down 15

		# Skill 
		move_down 15
		font_size(18) do
			text "CSS 3", style: :bold
		end

		move_down 10
		text "Talk about your styling skills", style: :italic, size: 15, color: "7d7d7d"
		move_down 15

		# Skill 
		move_down 15
		font_size(18) do
			text "DATABASES", style: :bold
		end

		move_down 10
		text "Talk about your databases skills", style: :italic, size: 15, color: "7d7d7d"
		move_down 15

	end
end