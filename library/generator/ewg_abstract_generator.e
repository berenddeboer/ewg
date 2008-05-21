indexing

	description:

		"TODO"

	library: "Eiffel Wrapper Generator Library"
	copyright: "Copyright (c) 1999, Andreas Leitner and others"
	license: "Eiffel Forum License v2 (see forum.txt)"
	date: "$Date$"
	revision: "$Revision$"

deferred class EWG_ABSTRACT_GENERATOR

inherit

	EWG_EIFFEL_COMPILER_SPECIFIC_PRINTER
		rename
			make as make_printer
		end

feature

	make (a_error_handler: like error_handler;
			a_directory_structure: like directory_structure) is
		require
			a_error_handler_not_void: a_error_handler /= Void
			a_directory_structure_not_void: a_directory_structure /= Void
		do
			error_handler := a_error_handler
			create {KL_NULL_TEXT_OUTPUT_STREAM} output_stream.make ("")
			directory_structure := a_directory_structure
			make_printer (output_stream)
		ensure
			error_handler_set: error_handler = a_error_handler
			directory_structure_set: directory_structure = a_directory_structure
		end

feature

	error_handler: EWG_ERROR_HANDLER
			-- Error handler

	directory_structure: EWG_DIRECTORY_STRUCTURE
			-- Directory structure

feature -- Generation

	generate (a_eiffel_wrapper_set: EWG_EIFFEL_WRAPPER_SET) is
		require
			a_eiffel_wrapper_set_not_void: a_eiffel_wrapper_set /= Void
		deferred
		end

	generate_for_all_compilers (a_eiffel_wrapper_set: EWG_EIFFEL_WRAPPER_SET) is
		require
			a_eiffel_wrapper_set_not_void: a_eiffel_wrapper_set /= Void
		do
			eiffel_compiler_mode.set_se_mode
			generate (a_eiffel_wrapper_set)
			eiffel_compiler_mode.set_ise_mode
			generate (a_eiffel_wrapper_set)
			eiffel_compiler_mode.set_ve_mode
			generate (a_eiffel_wrapper_set)
		end

feature {NONE} -- Constants

	Generated_file_warning_eiffel_comment: STRING is
		"{
indexing

	description: "This file has been generated by EWG. Do not edit. Changes will be lost!"

	generator: "Eiffel Wrapper Generator"
      }"

	Generated_file_warning_c_comment: STRING is
		"// This file has been generated by EWG. Do not edit. Changes will be lost!"

invariant

	error_handler_not_void: error_handler /= Void
	directory_structure_not_void: directory_structure /= Void

end