indexing

	description:

		"TODO"

	copyright: "Copyright (c) 2003, Andreas Leitner and others"
	license: "Eiffel Forum License v2 (see forum.txt)"
	date: "$Date$"
	revision: "$Revision$"

class  DB_UNPORTABLE_FUNCTIONS

inherit

	DB_FUNCTIONS_EXTERNAL
		rename
			db_version_4001_external as db_version_external,
			db_strerror_4001_external as db_strerror_external,
			db_create_4001_external as db_create_external
		export
			{NONE} all
		end

feature

end
