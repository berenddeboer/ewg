indexing

	description:

		"GTK vertical separator, used to group the widgets within a window"

	copyright: "Copyright (c) 2003, Andreas Leitner and others"
	library: "EWG GTK+ 2 Library"
	license: "Eiffel Forum License v2 (see forum.txt)"
	date: "$Date$"
	revision: "$Revision$"

class GTK_VSEPARATOR

inherit

	GTK_SEPARATOR

	GTKVSEPARATOR_FUNCTIONS_EXTERNAL
		export
			{NONE} all
		undefine
			is_equal,
			copy
		end

create

	make

feature {NONE} -- Creation

	make is
			-- Creates new vertical separator
		do
			make_shared (gtk_vseparator_new_external)
		end

end
