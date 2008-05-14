indexing
	description:

		"List like data model for GTK_TREE_VIEW"

	copyright: "Copyright (c) 2005, Andreas Leitner and others"
	library: "EWG GTK+ 2 Library"
	license: "Eiffel Forum License v2 (see forum.txt)"
	date: "$Date$"
	revision: "$Revision$"

class GTK_LIST_STORE

inherit

	GTK_OBJECT

	GTKLISTSTORE_FUNCTIONS_EXTERNAL
		export
			{NONE} all
		undefine
			copy,
			is_equal
		end

feature {NONE} -- Initialization
end
