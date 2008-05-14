indexing

	description:

		"A subclass widget for GtkMenuShell which holds GtkMenuItem widgets"

	copyright: "Copyright (c) 2003, Andreas Leitner and others"
	library: "EWG GTK+ 2 Library"
	license: "Eiffel Forum License v2 (see forum.txt)"
	date: "$Date$"
	revision: "$Revision$"

class GTK_MENU_BAR

inherit

	GTK_MENU_SHELL

	GTKMENUBAR_FUNCTIONS_EXTERNAL
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
			-- Creates a new GTK_MENU_BAR object
		do
			make_shared (gtk_menu_bar_new_external)
		ensure
			exists: exists
		end
	
feature {ANY} -- Signals

end
