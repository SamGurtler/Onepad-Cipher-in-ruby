$size = 69
def getPOA(charizard,letter)
	for count in 0...charizard.length()
		if charizard[count] == letter 
			return count+1
			break
			end 
	end 
end
def getLim(letter)
	return (letter - $size).abs
end
def getEnArr(lim,intletter)
	charizard = ['0','1','2','3','4','5','6','7','8','9',' ','.','(',')','"',',','!','?','a','A','b','B','c','C','d','D','e','E','f','F','g','G','h','H','i','I','j','J','k','K','l','L','m','M','n','N','o','O','p','P','q','Q','r','R','s','S','t','T','u','U','v','V','w','W','x','X','y','Y','z','Z']
	charmander = Array.new($size)
	for count in 0..(lim).abs
		charmander[count] = charizard[intletter+count]
	end
	counter = 0
	for count in lim..$size-1
		charmander[count] = charizard[counter]
		counter = counter+1
	end
	return charmander
end
def getEn(letter,charmeleon,charizard)
	for count in 0..$size-1
		if letter == charizard[count]
			return charmeleon[count]
			break
		end
	end
end
def getDe(letter,charmeleon,charizard)
	for count in 0..$size-1
		if letter == charmeleon[count]
			#puts letter.to_s+"="+charmeleon[count].to_s+"at"+count.to_s+"returns"+charizard[count].to_s
			return charizard[count]
			break
		end
	end
end
charizard =['0','1','2','3','4','5','6','7','8','9',' ','.','(',')','"',',','!','?','a','A','b','B','c','C','d','D','e','E','f','F','g','G','h','H','i','I','j','J','k','K','l','L','m','M','n','N','o','O','p','P','q','Q','r','R','s','S','t','T','u','U','v','V','w','W','x','X','y','Y','z','Z']
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
			text = gets.chomp
			charmander =Array.new(text.length)
			for counter in 0...text.length
				num = Random.rand($size-1)
				
				charmander[counter] = charizard[num] 
			end
			print "Your key is \""
			for counter in 0...charmander.length
				print charmander[counter]
			end
			print "\".\nYour cipher is \""
			for counter in 0...charmander.length

				print getEn(text.chars[counter],getEnArr(getLim(getPOA(charizard,charmander[counter])),getPOA(charizard,charmander[counter])),charizard)
			end
			print "\".\n"
		when 2
			print "What is your key:"
			key= gets.chomp
			key = key.chars
			print "What is your cipher:"	
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
