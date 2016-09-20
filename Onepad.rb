def getPOA(charizard,letter)
	for count in 0...charizard.length()
		if charizard[count] == letter 
			return count+1
			break
			end 
	end 
end
def getLim(letter)
	return (letter - 26).abs
end
def getEnArr(lim,intletter)
	 charizard = ['a','b','c','d','e','f','g','h','i','j','k','l','m','n','o','p','q','r','s','t','u','v','w','x','y','z']
	#chamander = ['c','d','e','f','g','h','i','j','k','l','m','n','o','p','q','r','s','t','u','v','w','x','y','z','a','b']
	#              3   4   5   6   7   8   9  10  11  12  13  14  15  16
	charmander = Array.new(26)
	for count in 0..(lim).abs
		charmander[count] = charizard[intletter+count]
	end
	counter = 0
	for count in lim..25
		charmander[count] = charizard[counter]
		counter = counter+1
	end
	return charmander
end
def getEn(letter,charmeleon,charizard)
	for count in 0..25
		if letter == charizard[count]
			return charmeleon[count]
			break
		end
	end
end
def getDe(letter,charmeleon,charizard)
	for count in 0..25
		if letter == charmeleon[count]
			return charizard[count]
			break
		end
	end
end
print "Enter string you want encrypted:"
#text = gets
text = "s\n"
text = text.chomp
text.downcase
charizard = ['a','b','c','d','e','f','g','h','i','j','k','l','m','n','o','p','q','r','s','t','u','v','w','x','y','z']
charmander =Array.new(text.length)
for counter in 0...text.length
		num = Random.rand(25)
		charmander[counter] = charizard[num] 
end
charmander = ['b']
print "Your key is:"
for counter in 0...charmander.length
	print charmander[counter]
end
#=begin
puts "\nPlace of alphebet for keys"
for counter in 0...charmander.length

	print getPOA(charizard,charmander[counter]).to_s+" "
end
puts "\n Limits to key if you know what I mean:"
for counter in 0...charmander.length

	print getLim(getPOA(charizard,charmander[counter])).to_s+" "
end
puts "\n Encryption array if you know what I mean:"
for counter in 0...charmander.length

	print getEnArr(getLim(getPOA(charizard,charmander[counter])),getPOA(charizard,charmander[counter])).to_s+"\n"
	print charizard.to_s+"\n"
end
#=end
print "\nYour encrypted message is:"
En = Array.new(text.length)
for counter in 0...charmander.length

	print getEn(charmander[counter],getEnArr(getLim(getPOA(charizard,charmander[counter])),getPOA(charizard,charmander[counter])),charizard)
	En[counter] = getEn(charmander[counter],getEnArr(getLim(getPOA(charizard,charmander[counter])),getPOA(charizard,charmander[counter])),charizard)
end
print "\nWhat is your key:"
for counter in 0...charmander.length

	print charmander[counter]
end
print "\nWhat is your encrypted message:"
for counter in 0...charmander.length

	print getEn(charmander[counter],getEnArr(getLim(getPOA(charizard,charmander[counter])),getPOA(charizard,charmander[counter])),charizard)
end
print "\nYour decrypted message is:"
for counter in 0...charmander.length

	print getDe(En[counter],getEnArr(getLim(getPOA(charizard,charmander[counter])),getPOA(charizard,charmander[counter])),charizard)
end
puts
getLim_counter = 0
charizard.each do charizard
puts charizard[getLim_counter].to_s+" "+getLim(getPOA(charizard,charizard[getLim_counter])).to_s
getLim_counter = getLim_counter+1
end