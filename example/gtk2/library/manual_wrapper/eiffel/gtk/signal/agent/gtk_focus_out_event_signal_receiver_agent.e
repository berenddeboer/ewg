indexing

	description:

		"Agent extension of GTK_FOCUS_OUT_EVENT_SIGNAL_RECEIVER"

	copyright: "Copyright (c) 2003, Andreas Leitner and others"
	library: "EWG GTK+ 2 Library"
	license: "Eiffel Forum License v2 (see forum.txt)"
	date: "$Date$"
	revision: "$Revision$"

class GTK_FOCUS_OUT_EVENT_SIGNAL_RECEIVER_AGENT

inherit

	GTK_FOCUS_OUT_EVENT_SIGNAL_RECEIVER
		rename
			make as make_internal
		end

	G_RECEIVER_AGENT_SKELETON [FUNCTION [ANY, TUPLE [GTK_WIDGET, GDK_FOCUS_EVENT], BOOLEAN]]

create

	make

feature {NONE}

	on_focus_out_event (a_widget: GTK_WIDGET; a_event: GDK_FOCUS_EVENT): BOOLEAN is
		do
			Result := agent_.item ([a_widget, a_event])
		end
	
end
