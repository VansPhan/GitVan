

def vanphan(number)
response = ""
response += "van" if number % 3 == 0
response += "josie" if number % 5 == 0
# return response if !response.empty?
# number
end


1.upto(100) do |num|
	puts vanphan(num)
end


