# We're going to add a remote data source to pull in stories from Mashable, Digg, and reddit.
  # http://mashable.com/stories.json
  # http://digg.com/api/news/popular.json
  # http://www.reddit.com/.json
# These stories will also be upvoted based on our rules. No more user input!

# Pull the json, parse it and then make a new story hash out of each story(Title, Category, Upvotes)
# Add each story to an array and display your "Front page"
require "json"
require "rest_client"

response = JSON.parse(RestClient.get "http://digg.com/api/news/popular_json")




def get_input
	get_input = gets.chomp

end

def calculate_upvotes(story, category)
	# Write code so that:
		upvotes = 1
		# If the Story is about cats multiply the upvotes by 5
		if story.include?("cats")
			upvotes *= 5

		# If the Story is about bacon multiply the upvotes by 8
		elsif story.include?("bacon")
			upvotes *= 8

		# If the Story is about Food it gets 3 times the upvotes.
		elsif story.include?("Food")
			upvote *= 3
		else
			upvote = 0
		end

end



def get_digg_stories
	
	
	response["data"]["feed"].each do |story|
	title = story["content"]["domain"]
	category = story["domain"]["tags"][0]
	calculate_upvotes(story, category)
end
end


get_digg_stories
# puts "Welcome to Teddit! a text based news aggregator. Get today's news tomorrow!"
# puts "Please enter a News story:"
# story = get_input
# puts "Please give it a category:"
# category = get_input
# upvotes = calculate_upvotes(story, category)
# puts "New story added! #{story}, Category: #{category.capitalize}, Current Upvotes: #{upvotes}"




# def get_digg_stories
	
	
# 	response ["data"]["feed"].each do |story|
# 	title = story["content"]["title"]
# 	category = story["content"]["tags"][0]
# 	calculate_upvotes(story, category)
# end
# end


# def get_mash_stories

# 	response ["data"]["feed"].each do |story|
# 	title = story["content"]["title"]
# 	category = story["content"]["tags"][0]
# 	calculate_upvotes(story, category)
# end
# end

# get_digg_stories

# # puts "Welcome to Teddit! a text based news aggregator. Get today's news tomorrow!"
# # puts "Please enter a News story:"
# # story = get_input
# # puts "Please give it a category:"
# # category = get_input
# # upvotes = calculate_upvotes(story, category)
# # puts "New story added! #{story}, Category: #{category.capitalize}, Current Upvotes: #{upvotes}"





