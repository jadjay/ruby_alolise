#!/usr/bin/env ruby
temp='something'
personnes=[]
while temp != ""
	pers={}
	{
		'name' => String,
		'age' => Integer,
		'sexe' => ['M','F'],
	}.each do |item,clas|
		print "Please give %s (%s): " % [item, clas]
		temp = gets.chomp
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

