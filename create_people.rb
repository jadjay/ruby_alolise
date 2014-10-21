#!/usr/bin/env ruby
def ask_question item, clas
    # extract method ask_question 
    # please don't use format
		print "Please give %s (%s): " % [item, clas]
		gets.chomp
end

temp='something'
personnes=[]
# use bool
while temp != ""
  # don't need declaration
	pers={}
  # dont use class for a word
  # the reader is lost
	{
		'name' => String,
		'age' => Integer,
		'sexe' => ['M','F'],
	}.each do |item,clas|
    temp = ask_question item,clas
		if temp == ""
		elsif clas.is_a? Array and clas.include?(temp)
			pers.store(item, temp)
		elsif temp.is_a? clas
			pers.store(item, temp)
		end
	end
	personnes.push(pers) if pers != {}
end

puts personnes

