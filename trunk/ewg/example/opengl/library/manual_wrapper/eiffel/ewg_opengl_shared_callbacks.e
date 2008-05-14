indexing

	description:

		"Singleton access to display callback dispatcher"

	copyright: "Copyright (c) 2003, Andreas Leitner and others"
	license: "Eiffel Forum License v2 (see forum.txt)"
	date: "$Date$"
	revision: "$Revision$"

class EWG_OPENGL_SHARED_CALLBACKS

feature

	display_callback: EWG_OPENGL_DISPLAY_CALLBACK is
		once
			create Result.make
		end
	
end	
