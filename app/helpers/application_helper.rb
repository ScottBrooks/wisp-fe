# Methods added to this helper will be available to all templates in the application.
module ApplicationHelper


	def menu_link( text, path )
		link_to_unless( controller_name.downcase == text.downcase, text, path ) do
			link_to( text, path, :class=>:active )
		end
	end
end
