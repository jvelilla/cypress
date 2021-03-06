note
	description: "Summary description for {FB_USER_VIDEO_PUBLISHING}."
	author: ""
	date: "$Date: 2018-09-06 13:07:18 -0300 (ju. 06 de sep. de 2018) $"
	revision: "$Revision: 102137 $"

class
	FB_VIDEO_PUBLISHING

inherit

	STRING_TABLE [STRING]

create
	make, make_equal, make_caseless, make_equal_caseless


feature -- Access

	include_description (a_val: STRING_32)
		do
			force (utf8_encoder.encoded_string (a_val), description)
		end

feature {NONE}-- Parameters

	description: STRING = "description"
			--  UTF-8 string
			--  The description of the video, used as the accompanying status message in any feed story.

	utf8_encoder: UTF8_ENCODER
		do
			create Result
		end
end
