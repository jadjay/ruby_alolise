#!/usr/bin/env ruby

def ask_question item, clas
		print "Please give %s (%s): " % [item, clas]
		gets.chomp
end

# refactored extract method
def build_people resp, item, clas, pers
  case clas
  when clas == String or clas == Integer
   if resp.class == clas
			pers.store(item, resp)
   end
  when clas.class == Array
    if clas.include? resp
			pers.store(item, resp)
    end
  end

  false
end

temp='something'
personnes=[]
# use bool
while temp != ""
  # extract method 
  # don't need declaration
	pers={}
  # dont use class for a word
  # the reader is lost
	{
		'name' => String,
		'age' => Integer,
		'sexe' => ['M','F'],
	}.each do |item,clas|
    # rename res
    temp = ask_question item,clas
    # rename method we're on building someone
    if build_people temp, item, clas, pers
	end
	personnes.push(pers) if pers != {}
end

puts personnes

