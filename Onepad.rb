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
			#puts letter.to_s+"="+charmeleon[count].to_s+"at"+count.to_s+"returns"+charizard[count].to_s
			return charizard[count]
			break
		end
	end
end
charizard = ['a','b','c','d','e','f','g','h','i','j','k','l','m','n','o','p','q','r','s','t','u','v','w','x','y','z']
dont_exit_true = true
while dont_exit_true == true
	puts "Choose one of the following numbers:"
	puts "1)Encrypt"
	puts "2)Decrypt"
	puts "3)Exit"
	print"Choice:"
	case gets.chomp.to_i
		when 1
			print "Enter string you want encrypted:"
			text = gets
			text = text.chomp
			text = text.downcase
			charmander =Array.new(text.length)
			for counter in 0...text.length
				num = Random.rand(25)
				charmander[counter] = charizard[num] 
			end
			print "Your key is:"
			for counter in 0...charmander.length
				print charmander[counter]
			end
			print "\nYour encrypted message is:"
			for counter in 0...charmander.length

				print getEn(text.chars[counter],getEnArr(getLim(getPOA(charizard,charmander[counter])),getPOA(charizard,charmander[counter])),charizard)
			end
			puts ""
		when 2
			
			print "What is your key:"
			key= gets.chomp
			key = key.chars
			print "What is your encrypted message:"	
			$En = gets
			print "Your decrypted message is:"
			for counter in 0...key.length

				print getDe($En.chars[counter],getEnArr(getLim(getPOA(charizard,key[counter])),getPOA(charizard,key[counter])),charizard)
			end
			puts ""
		when 3
		dont_exit_true = false
		else
		puts "That number isn't one of your choices. Please try again."
	end
end
print "Bye!"