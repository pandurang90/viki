require './video.rb'
require './channel'
require './celebrity'

class Viki
  #This method returns true if there are duplicates in contents otherwise false
  def check_for_duplicate_content(contents)
    if has_duplicate? contents.map(&:id)
      puts "There are duplicates in #{contents.first.class.to_s} content"
    else
    	puts "There are no duplicates in #{contents.first.class.to_s} content"
    end
  end

  def has_duplicate?(content_ids)
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
v = Viki.new
[1,2,3,4,5].each do |number|
	videos.push Video.new(number,"#{number}_title")
	channels.push Channel.new(number,"#{number}_name")
	celebrity.push Celebrity.new(number,"#{number}_name")
end

puts ""
puts "This is an example with no duplicate content"
puts ""
v.check_for_duplicate_content videos
v.check_for_duplicate_content channels
v.check_for_duplicate_content celebrity

############################ Without duplicates end ##############################


puts ""
puts "***********************"
puts ""


############################ With duplicates ##############################
videos = []
channels = []
celebrity = []

[1,2,3,4,2].each do |number|
	videos.push Video.new(number,"#{number}_title")
	channels.push Channel.new(number,"#{number}_name")
	celebrity.push Celebrity.new(number,"#{number}_name")
end

puts "This is an example with no duplicate content"
puts ""
v.check_for_duplicate_content videos
v.check_for_duplicate_content channels
v.check_for_duplicate_content celebrity

############################ With duplicates end ##############################




