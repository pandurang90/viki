require './video.rb'
require './channel'
require './celebrity'

class Viki
	#This method returns true if there are duplicates in contents otherwise false
	def self.check_for_duplicate_content(content_ids)
		has_duplicate = false
		content_ids.each do |content_id|
			if content_ids.count(content_id) > 1
				has_duplicate = true
				break
			end
		end
		has_duplicate
	end
end


############################ Without duplicates start ##############################
videos = []
channels = []
celebrity = []

[1,2,3,4,5].each do |number|
	videos.push Video.new(number,"#{number}_title")
	channels.push Channel.new(number,"#{number}_name")
	celebrity.push Celebrity.new(number,"#{number}_name")
end

puts "This is example with no duplicate content"
puts Viki.check_for_duplicate_content videos.map(&:id)
puts Viki.check_for_duplicate_content channels.map(&:id)
puts Viki.check_for_duplicate_content celebrity.map(&:id)

############################ Without duplicates end ##############################



############################ With duplicates ##############################
videos = []
channels = []
celebrity = []

[1,2,3,4,2].each do |number|
	videos.push Video.new(number,"#{number}_title")
	channels.push Channel.new(number,"#{number}_name")
	celebrity.push Celebrity.new(number,"#{number}_name")
end

puts "This is example with no duplicate content"
puts Viki.check_for_duplicate_content videos.map(&:id)
puts Viki.check_for_duplicate_content channels.map(&:id)
puts Viki.check_for_duplicate_content celebrity.map(&:id)

############################ With duplicates end ##############################




