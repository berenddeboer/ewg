indexing

	description:

		"Agent extension of GTK_CLICKED_SIGNAL_RECEIVER"

	copyright: "Copyright (c) 2003, Andreas Leitner and others"
	library: "EWG GTK+ 2 Library"
	license: "Eiffel Forum License v2 (see forum.txt)"
	date: "$Date$"
	revision: "$Revision$"

class GTK_CLICKED_SIGNAL_RECEIVER_AGENT

inherit

	GTK_CLICKED_SIGNAL_RECEIVER
		rename
			make as make_internal
		end

	G_RECEIVER_AGENT_SKELETON [PROCEDURE [ANY, TUPLE [GTK_BUTTON]]]

create

	make

feature {NONE}

	on_clicked (a_button: GTK_BUTTON) is
		do
			agent_.call ([a_button])
		end
	
end
