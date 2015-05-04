module StaticPagesHelper
	def guest_user(&block)
		unless user_signed_in?
			content = capture(&block)
			concat content_tag(:div, content, class: 'center jumbotron')
		end
	end

	def movie_posters(&block)
		content = capture(&block)
		concat content_tag(:div, content, class: 'center jumbotron')
	end
end
