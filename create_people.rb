#!/usr/bin/env ruby

def ask_question item, conf
		print "Please give %s (%s): " % [item, conf[1] ]
		gets.chomp 
    #!= "" or conf[1]
end

# refactored extract method
def build_people resp, item, conf, pers
  maclasse, default = conf
  # OK je viens de comprendre mon erreur
  # C'est toujours du String !!!!!
    print "%s %s\n" % [ maclasse,resp.class ]
  if maclasse== Array and default.include? resp
			pers.store(item, resp)
  elsif resp.class == maclasse
    puts maclasse
			pers.store(item, resp)
  end
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
		'name' => [ String, 'john doe' ],
		'age' => [ Fixnum, '20' ],
		'sexe' => [ Array, ['M','F'] ],
	}.each do |item,conf|
    temp = ask_question item,conf
    # rename method we're on building someone
    if temp
      build_people temp, item, conf, pers
    else
      exit
    end

    #if not build_people temp, item, clas, pers
    #  puts "respect the class\n"
    #  temp = ask_question item,clas
    #end
	end
	personnes.push(pers) if pers != {}
end

puts personnes

