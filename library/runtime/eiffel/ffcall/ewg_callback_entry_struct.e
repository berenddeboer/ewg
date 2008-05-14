-- This file has been generated by EWG. Do not edit. Changes will be lost!
class EWG_CALLBACK_ENTRY_STRUCT

inherit

	EWG_STRUCT

	EWG_CALLBACK_ENTRY_STRUCT_EXTERNAL
		export
			{NONE} all
		end

create

	make_new_unshared,
	make_new_shared,
	make_unshared,
	make_shared

feature {NONE} -- Implementation

	sizeof: INTEGER is
		do
			Result := sizeof_external
		end

feature {ANY} -- Member Access

	get_a_class: POINTER is
			-- Access member `class'
		require
			exists: exists
		do
			Result := get_a_class_external (item)
		ensure
			result_correct: Result = get_a_class_external (item)
		end

	set_a_class (a_value: POINTER) is
			-- Set member `class'
		require
			exists: exists
		do
			set_a_class_external (item, a_value)
		ensure
			a_value_set: a_value = get_a_class
		end

	get_a_feature: POINTER is
			-- Access member `feature'
		require
			exists: exists
		do
			Result := get_a_feature_external (item)
		ensure
			result_correct: Result = get_a_feature_external (item)
		end

	set_a_feature (a_value: POINTER) is
			-- Set member `feature'
		require
			exists: exists
		do
			set_a_feature_external (item, a_value)
		ensure
			a_value_set: a_value = get_a_feature
		end

end
