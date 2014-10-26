#initialize character
gender = 3
weapon = 0
start = 0
health = 10
money = 1000

until health == 0 || money == 0
until start == 1
puts ">To begin your adventure, enter begin."
start = gets.chomp.downcase
    if start == "begin"
        start = 1
        genderct = 0
        while genderct == 0
             puts ">Please enter your gender (male or female)."
             boygirl = gets.chomp.downcase
            if boygirl == "male"
                 formal = "sir"
                 genderct = 1
             elsif boygirl == "female"
                 fomal = "madam"
                 genderct = 1
             else
                 genderct = 0
             end 
        end 


    else 
        start == 0
    end 
end 

puts ">You are a knight in the land called IntraNacht. Normally a peaceful place to live, an unknown evil lurks the country side. Your mission is to defeat this evil an its forces you encounter along the way. To help you along, you begin with 10 health points and 1000 pecuniam (roughly equivalent to 100 dollars). You will also be given you choice of weapon. Please say sword or axe."
until weapon != 0
sword = gets.chomp.downcase
    if sword == "sword"
        weapon = 1
        puts ">Nice! You've selected a sword. Hit enter."
    elsif sword == "axe"
        weapon = 2
        puts ">You've select an axe. Meh. Hit enter I guess..."
    else 
        weapon = 0
	puts ">Please select a weapon."
    end 
end 
msc = gets.chomp

ob1 = 1 + rand(3)

case ob1
when 1
puts">A monstrous troll blocks your path, would you like to fight or run?"	
chtr1 = 0
    until chtr1 == 1
		tr1 = gets.chomp.downcase
    		if tr1 == "fight"
        		health -= 2
                chtr1 = 1
			puts ">You defeat the troll but you suffer injuries. Your health is now down to #{health}."
    		elsif tr1 == "run"
        		money -= 5000
                chtr1 = 1
			puts ">You escape but the troll steals pecuniam from your back pocket. You now have #{money} pecuniam."
    		else 
        		puts ">Would you mind making a descision at some point in the foreseeable future."
    	end 
	end 
when 2
puts">You come across a huge casm and an elderly man guarding the bridge. He asks you what the airspeed velocity of an unlaiden swallow is."	
om1 = gets.chomp.downcase
    	if om1 == "what do you mean? african or european swallow?"
            money += 750
            puts "Old man> What? I don't know that."
		    puts ">The old man is thrown by some mysterious force into the casm. As he flies, his wallet falls to the ground which contains 750 pecuniam! You now have #{money} pecuniam."
    	else 
        	health = 0
            puts "Old man>Incorrect!"
            puts ">You are launched by some mysterious force into the casm. You die from the fall. You had #{money} pecuniam when you died."
    	
	end 
when 3
money += 200
health -= 1
puts ">You find a chest under a tree. Upon opening it, you discover 200 pecuniam! You now have #{money} pecuniam. However, you slice you hand whilst opening the chest. Your health is down to #{health}"
else
puts "FATAL ERROR"
end	        

puts ">Hit enter."
msc = gets.chomp
inptgenderct = 0
puts ">While walking along, you encounter your long term love intrest? What is the gender of your partner?"
until inptgenderct != 0
inptgender = gets.chomp.downcase
    if inptgender == "male"
       ptpronoun = "He"
       ptname = "Jack"
       ptdo = "his"
       inptgenderct = 1
    elsif inptgender == "female"
        ptpronoun = "She"
        ptname = "Rose"
        ptdo = "her"
        inptgenderct = 1
    else 
        puts ">Ahem..."
    end
end

puts "#{ptname}>Wow! Funny running into you here! Hey, I've that there's a castle around here that's said to hold the greatest treasure in IntraNacht. However, it's garded by an ancient evil that's slept for thousands of years."
puts ">You decide to join #{ptdo} on #{ptdo} quest as you have a hunch that the 'ancient evil' is the one you seek. Hit enter."
msc = gets.chomp

puts ">You and #{ptname} stumble across an elderly sorceress. She offers to heal you in exchange for 300 pecuniam. Do you accept his offer?"
offct = 0
until offct == 1
offer = gets.chomp.downcase
    if offer == "yes"
        offct = 1
        health +=1
        money -= 300
        puts "Old wizard>Thank you kind #{formal}."
        puts ">Hit enter."
        msc = gets.chomp
    elsif offer == "no"
        offct = 1
        puts ">Pfft. Whatever."
        puts ">Who do you think you are being rude to kindly sorceresses? Just hit enter, jerk!"
        msc = get.chomp
    else
        puts ">Yes or no? Stop mubling!"
    end
  end
end
