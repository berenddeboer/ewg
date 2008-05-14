indexing

	description:

		"A widget for custom user interface elements."

	copyright: "Copyright (c) 2003, Andreas Leitner and others"
	library: "EWG GTK+ 2 Library"
	license: "Eiffel Forum License v2 (see forum.txt)"
	date: "$Date$"
	revision: "$Revision$"

class GTK_DRAWING_AREA

inherit

	GTK_WIDGET
		export
			{GTK_DRAWING_AREA} item
		end

	GTK_DRAWING_AREA_AGENT

	GTKDRAWINGAREA_FUNCTIONS_EXTERNAL
		export
			{NONE} all
		undefine
			is_equal,
			copy
		end

create

	make

feature {NONE} -- Initialization

	make is
			-- Create drawing area.
		do
			make_shared (gtk_drawing_area_new_external)
		end

end
